from rentals.models import BasicRates, Country, ExtraServices, HouseRules, LongStayDiscount, Rental, RentalAmenities, RentalBasic, RentalLocation, RentalRoom, RentalTax, RentalsGallery, SeasonalRates, UserProfile, AccountSetting
from django.db.models.signals import post_save, pre_delete
from django.dispatch import receiver
from users.booking_pal_api import FeeAndTax, LosPricing, ProductImages, ProductManager, PropertyManager, RatesAndAvailability, declutter_payload
from datetime import datetime


@receiver(post_save, sender=UserProfile)
@receiver(post_save, sender=AccountSetting)
def create_update_property_manager(sender, instance, created, **kwargs):
    if created and sender == UserProfile:
        user_acc_setting = AccountSetting.objects.filter(user_id=instance.user.id).first()
        country = Country.objects.filter(code=instance.country).first()
        first_name = instance.first_name if instance.first_name != "NA" else instance.user.first_name
        last_name = instance.last_name if instance.last_name != "NA" else instance.user.last_name
        payload = {
            "data": {
                "isCompany": False,
                "companyDetails": {
                    "companyName": f"{first_name} {last_name}",
                    "fullName": f"{first_name} {last_name}",
                    "companyAddress": {
                        "country": instance.country if instance.country != "NA" else "US",
                        "state": instance.state if instance.state != "NA" else "Alaska",
                        "streetAddress": instance.address if instance.address != "NA" else "abc, dummy",
                        "city": instance.city if instance.city != "NA" else "Nome",
                        "zip": str(instance.postal_code)
                    },
                    "email": instance.user.email,
                    "phone": {
                        "countryCode": "+"+country.country_code if country else "+1",
                        "number": instance.phone if instance.phone != "NA" else 9876543210
                    },
                },
                "currency": user_acc_setting.prefered_currency if user_acc_setting else 'USD',
            }
        }
        # Create property manager in BookingPal
        response, data = PropertyManager().create(payload)
        if response:
            instance.bookingpal_id = data.get('data')[0].get('id')
            instance.save()
    else:
        # Update property manager in BookingPal
        if sender==AccountSetting:
            user_bookingpal_id = UserProfile.objects.get(user__id=instance.user_id).bookingpal_id
            res, data = PropertyManager().fetch_one(user_bookingpal_id)
        else:
            res, data = PropertyManager().fetch_one(instance.bookingpal_id)
        payload = {"data": data.get("data")[0]}
        if sender == AccountSetting:
            payload["data"]["companyDetails"]["currency"] = instance.prefered_currency
        elif sender == UserProfile:
            country = Country.objects.filter(code=instance.country).first()
            payload["data"]["companyDetails"]["companyName"] = f"{instance.first_name} {instance.last_name}"
            payload["data"]["companyDetails"]["fullName"] = f"{instance.first_name} {instance.last_name}"
            payload["data"]["companyDetails"]["companyAddress"]["country"] = instance.country.strip()
            payload["data"]["companyDetails"]["companyAddress"]["state"] = instance.state
            payload["data"]["companyDetails"]["companyAddress"]["streetAddress"] = instance.address
            payload["data"]["companyDetails"]["companyAddress"]["city"] = instance.city
            payload["data"]["companyDetails"]["companyAddress"]["zip"] = instance.postal_code
            payload["data"]["companyDetails"]["email"] = instance.user.email
            payload["data"]["companyDetails"]["phone"]["countryCode"] = "+"+country.country_code.replace("\t", "") if country else "+1"
            payload["data"]["companyDetails"]["phone"]["number"] = instance.phone
            payload["data"]["companyDetails"]["website"] = instance.website
            payload["data"]["companyDetails"]["language"] = instance.language
        clutter_list = ['policies', 'payment', 'additionalContacts', 'enableRms', 'ownerInfo', 'neighborhoodOverview']
        payload = declutter_payload(payload, clutter_list)
        payload["data"]["companyDetails"].pop('accountId', None)
        payload["data"]["companyDetails"].pop('transportCompanyAdditionalDetails', None)
        response, data = PropertyManager().update(payload)

@receiver(post_save, sender=Rental)
@receiver(post_save, sender=RentalRoom)
@receiver(post_save, sender=RentalBasic)
@receiver(post_save, sender=RentalLocation)
@receiver(post_save, sender=BasicRates)
@receiver(post_save, sender=HouseRules)
@receiver(post_save, sender=RentalAmenities)
def create_update_rental_product(sender, instance, created, **kwargs):
    rental_type, space, space_unit, permit_nbr = "PCT102", "1", "SQ_M", "dummy"
    if created and sender == Rental:
        user_acc_setting = AccountSetting.objects.filter(user_id=instance.user_id).first()
        payload = {
            "data": {
                "name": instance.rental_name,
                "rooms": 1,
                "bathrooms": 1,
                "livingRoom": 1,
                "persons": 2,
                "propertyType": rental_type,
                "space": space,
                "spaceUnit": space_unit,
                "currency": user_acc_setting.prefered_currency if user_acc_setting else 'USD',
                "location": {
                    "postalCode": "901821",
                    "country": "US",
                    "region": "Illinois",
                    "city": "Chicago",
                    "street": "210 North Wells Street",
                    "zipCode9": "901821"
                },
                "notes": {
                    "description": {
                        "texts": [
                            {
                            "language": "EN",
                            "value": instance.rental_description
                            }
                        ]
                    },
                    "shortDescription": {
                        "texts": [
                            {
                            "language": "EN",
                            "value": instance.rental_short_description
                            }
                        ]
                    },
                },
                "taxNumber": permit_nbr
            }
        }
        # Create property manager in BookingPal
        response, data = ProductManager().create(payload)
        if response:
            instance.bookingpal_id = data.get('data')[0].get('id')
            instance.save()
        # Update cover image
        if instance.cover_image and instance.bookingpal_id:
            payload = {
                "data": {
                    "productId": instance.bookingpal_id,
                    "image": {
                        "url": instance.cover_image.url,
                        "tags": []
                    }
                }
            }
            response, data = ProductImages().create(payload)
            if response:
                instance.bookingpal_img_id = data.get('data')[0].get('id')
                instance.save()
    else:
        if sender in [RentalLocation, RentalBasic, RentalRoom, BasicRates, HouseRules, RentalAmenities]:
            rental = Rental.objects.get(id=instance.rental_id)
            res, data = ProductManager().fetch_one(rental.bookingpal_id)
        else:
            res, data = ProductManager().fetch_one(instance.bookingpal_id)

        payload = {"data": data.get("data")[0]}
        if sender == Rental:
            user_acc_setting = AccountSetting.objects.filter(user_id=instance.user_id).first()
            payload["data"]["currency"] = user_acc_setting.prefered_currency if user_acc_setting else 'USD'
            payload["data"]["name"] = instance.rental_name
            payload["data"]["notes"] = {
                "description": {
                    "texts": [
                        {
                        "language": "EN",
                        "value": instance.rental_description
                        }
                    ]
                },
                "shortDescription": {
                    "texts": [
                        {
                        "language": "EN",
                        "value": instance.rental_short_description
                        }
                    ]
                },
            }
            clutter_list = ['attributesWithQuantity', 'nearbyAmenities', 'bedroomConfiguration', 'policy', 'propertyRating', 'ratingNumber', 'bpValidation', 'enableRms', 'hostLocation', 'usedisplayname']
            payload = declutter_payload(payload, clutter_list)
        elif sender == RentalLocation:
            payload["data"]["location"] = {
                    "postalCode": instance.postal,
                    "country": instance.country,
                    "region": instance.state,
                    "city": instance.city,
                    "street": instance.address,
                    "zipCode9": instance.postal
                }
            clutter_list = ['attributesWithQuantity', 'nearbyAmenities', 'bedroomConfiguration', 'policy', 'propertyRating', 'ratingNumber', 'bpValidation', 'enableRms', 'hostLocation', 'usedisplayname', 'notes']
            payload = declutter_payload(payload, clutter_list)
        elif sender == RentalRoom:
            payload["data"]["rooms"] = int(instance.no_of_rooms[2])
            payload["data"]["bathrooms"] = int(instance.no_of_rooms[1])
            payload["data"]["livingRoom"] = int(instance.no_of_rooms[5])
            clutter_list = ['attributesWithQuantity', 'nearbyAmenities', 'bedroomConfiguration', 'policy', 'propertyRating', 'ratingNumber', 'bpValidation', 'enableRms', 'hostLocation', 'usedisplayname', 'notes']
            payload = declutter_payload(payload, clutter_list)
        elif sender == RentalBasic:
            rental_type, space, space_unit, permit_nbr = "PCT102", "1", "SQ_M", "dummy"
            for key, val in RentalBasic.RENTAL_TYPE_DICT.items():
                if val.lower() == instance.rental_type.lower():
                    rental_type = key
            space = int(instance.floorspace) if instance.floorspace else "1"
            if instance.floorspace_units == "ft2":
                space_unit = "SQ_FT"
            else:
                space_unit = "SQ_M"
            permit_nbr = instance.rental_licence if instance.rental_licence else "dummy"
            payload["data"]["propertyType"] = rental_type
            payload["data"]["space"] = space
            payload["data"]["spaceUnit"] = space_unit
            payload["data"]["taxNumber"] = permit_nbr
            clutter_list = ['attributesWithQuantity', 'nearbyAmenities', 'bedroomConfiguration', 'policy', 'propertyRating', 'ratingNumber', 'bpValidation', 'enableRms', 'hostLocation', 'usedisplayname', 'notes']
            payload = declutter_payload(payload, clutter_list)
        elif sender == BasicRates:
            payload["data"]["persons"] = int(instance.guest_number) if instance.guest_number else 2
            clutter_list = ['attributesWithQuantity', 'nearbyAmenities', 'bedroomConfiguration', 'policy', 'propertyRating', 'ratingNumber', 'bpValidation', 'enableRms', 'hostLocation', 'usedisplayname', 'notes']
            payload = declutter_payload(payload, clutter_list)
        elif sender == HouseRules:
            payload["data"]["policy"]["childrenAllowed"] = True if instance.for_kid not in ["Not suitable for children", "", None] else False
            payload["data"]["policy"]["smokingAllowed"] = True if instance.smoking_allowed not in ["No smoking", "", None] else False
            payload["data"]["policy"]["petPolicy"]["allowedPets"] = True if instance.pets not in ["No pets allowed", "", None] else False
            payload["data"]["policy"]["petPolicy"]["chargePets"] = "Free"
            payload["data"]["policy"].update({'internetPolicy': {
                'accessInternet': False
            },
            'parkingPolicy': {
                'accessParking': False
            }})
            clutter_list = ['attributesWithQuantity', 'nearbyAmenities', 'bedroomConfiguration', 'propertyRating', 'ratingNumber', 'bpValidation', 'enableRms', 'hostLocation', 'usedisplayname', 'notes']
            payload = declutter_payload(payload, clutter_list)
        elif sender == RentalAmenities:
            payload["data"]["policy"]["childrenAllowed"] = True if "Children welcome" in instance.amenities else False
            payload["data"]["policy"]["smokingAllowed"] = True if "Smoking allowed" in instance.amenities else False
            payload["data"]["policy"]["petPolicy"]["allowedPets"] = True if "Pets allowed" in instance.amenities else False
            payload["data"]["policy"]["petPolicy"]["chargePets"] = "Free"
            if "Internet wireless" in instance.amenities:
                payload["data"]["policy"]["internetPolicy"] = {
                    "accessInternet": True,
                    "kindOfInternet": "WiFi",
                    "availableInternet": "AllAreas",
                    "chargeInternet": "Free"
                }
            clutter_list = ['attributesWithQuantity', 'nearbyAmenities', 'bedroomConfiguration', 'propertyRating', 'ratingNumber', 'bpValidation', 'enableRms', 'hostLocation', 'usedisplayname', 'notes']
            payload = declutter_payload(payload, clutter_list)
        # Update property manager in BookingPal
        response, data = ProductManager().update(payload)
        if sender == Rental:
            if instance.status:
                response, data = ProductManager().activate([int(instance.bookingpal_id)])
            else:
                response, data = ProductManager().deactivate([int(instance.bookingpal_id)])
            # Update cover image
            if instance.cover_image and instance.bookingpal_id:
                payload = {
                    "data": {
                        "productId": instance.bookingpal_id,
                        "image": {
                            "url": instance.cover_image.url,
                            "tags": []
                        }
                    }
                }
                response, data = ProductImages().create(payload)
                if response:
                    instance.bookingpal_img_id = data.get('data')[0].get('id')
                    instance.save()

@receiver(pre_delete, sender=Rental)
def delete_rental_product(sender, instance, using, **kwargs):
    if instance.bookingpal_id:
        response, data = ProductManager().delete(instance.bookingpal_id)

@receiver(post_save, sender=RentalsGallery)
def create_rental_image(sender, instance, created, **kwargs):
    rental_bookingpal_id = Rental.objects.get(instance.rental_id).bookingpal_id
    payload = {
        "data": {
            "productId": rental_bookingpal_id,
            "image": {
                "url": instance.image.url,
                "tags": [
                    ]
            }
        }
    }
    if created:
        # Create property manager in BookingPal
        response, data = ProductImages().create(payload)
        if response:
            instance.bookingpal_id = data.get('data')[0].get('id')
            instance.save()

@receiver(pre_delete, sender=RentalsGallery)
def delete_rental_product_image(sender, instance, using, **kwargs):
    if instance.bookinpal_id:
        payload = {
            "data": {
                "productId": instance.bookingpal_id,
                "images": [
                    {
                        "url": instance.image.url
                    }
                ]
            }
        }
        response, data = ProductImages.delete(payload)

@receiver(post_save, sender=RentalTax)
@receiver(post_save, sender=ExtraServices)
def create_update_rental_fee_tax(sender, instance, created, **kwargs):
    rental = Rental.objects.get(id=instance.rental_id)
    response, data = FeeAndTax().fetch_all(rental.bookingpal_id)
    payload = {"data": data.get("data")[0]}
    payload["data"]["productId"] = payload.get("data", [{}]).get("productId", rental.bookingpal_id)
    if sender == ExtraServices:
        fees = payload.get("data").get("fees", [])
        fees.append({
                        "entityType": "OPTIONAL",
                        "feeType": "GENERAL",
                        "name": instance.service_name,
                        "unit": "PER_STAY",
                        "value": int(instance.service_price) if instance.service_price else 0,
                        "valueType": "FLAT"
                    })
        payload["data"]["fees"] = fees
    if sender == RentalTax:
        taxes = payload.get("data").get("taxes", [])
        taxes.append(
                    {
                        "name": instance.tax_type,
                        "value": int(instance.amountin)
                    }
                )
        payload["data"]["taxes"] = taxes
    response, data = FeeAndTax().create(payload)

@receiver(post_save, sender=SeasonalRates)
def create_update_rental_rates(sender, instance, created, **kwargs):
    rental = Rental.objects.get(id=instance.rental_id)
    start_date =  datetime.strptime(instance.start_date, "%d %b, %Y").strftime("%Y-%m-%d")
    end_date =  datetime.strptime(instance.end_date, "%d %b, %Y").strftime("%Y-%m-%d")

    payload = {
        "data": {
            "productId": rental.bookingpal_id,
            "rates": [
            {
                "beginDate": start_date,
                "endDate": end_date,
                "amount": instance.basic_night
            }
            ],
            "minStays": [
            {
                "beginDate": start_date,
                "endDate": end_date,
                "minStay": instance.minimum_stay
            }
            ],
            "maxStays": [
            {
                "beginDate": start_date,
                "endDate": end_date,
                "maxStay": instance.maximum_stay
            }
            ],
            "restrictions": [
            {
               "beginDate": start_date,
                "endDate": end_date,
                "checkIn": {
                    "monday": True if "Mon" in instance.checkin_days else False,
                    "tuesday": True if "Tue" in instance.checkin_days else False,
                    "wednesday": True if "Wed" in instance.checkin_days else False,
                    "thursday": True if "Thu" in instance.checkin_days else False,
                    "friday": True if "Fri" in instance.checkin_days else False,
                    "saturday": True if "Sat" in instance.checkin_days else False,
                    "sunday": True if "Sun" in instance.checkin_days else False
                },
                "checkOut": {
                    "monday": True if "Mon" in instance.checkin_days else False,
                    "tuesday": True if "Tue" in instance.checkin_days else False,
                    "wednesday": True if "Wed" in instance.checkin_days else False,
                    "thursday": True if "Thu" in instance.checkin_days else False,
                    "friday": True if "Fri" in instance.checkin_days else False,
                    "saturday": True if "Sat" in instance.checkin_days else False,
                    "sunday": True if "Sun" in instance.checkin_days else False
                }
            }
            ]
        }
    }
    response, data = RatesAndAvailability().create(payload)

@receiver(post_save, sender=LongStayDiscount)
def create_update_rental_losdiscount(sender, instance, created, **kwargs):
    rental = Rental.objects.get(id=instance.rental_id)

    response, data = ProductManager().fetch_one(rental.bookingpal_id)
    bookingpal_rental_data = data.get("data")[0]
    if not bookingpal_rental_data.get("supportedLosRates", False):
        payload = {
            "data": {
                "id": bookingpal_rental_data.get("id"),
                "name": bookingpal_rental_data.get("name"),
                "rooms": bookingpal_rental_data.get("rooms"),
                "bathrooms": bookingpal_rental_data.get("bathrooms"),
                "livingRoom": bookingpal_rental_data.get("livingRoom"),
                "persons": bookingpal_rental_data.get("persons"),
                "propertyType": bookingpal_rental_data.get("propertyType"),
                "currency": bookingpal_rental_data.get("currency"),
                "location": {
                    "postalCode": bookingpal_rental_data.get("location").get("postalCode"),
                    "country": bookingpal_rental_data.get("location").get("country"),
                    "region": bookingpal_rental_data.get("location").get("region"),
                    "city": bookingpal_rental_data.get("location").get("city"),
                    "street": bookingpal_rental_data.get("location").get("street"),
                    "zipCode9": bookingpal_rental_data.get("location").get("zipCode9")
                },
                "supportedLosRates": True
            }
        }
        response, data = ProductManager().update(payload)

    payload = {
        "data": {
            "productId": rental.bookingpal_id,
            "losRates": [
            {
                "checkInDate": datetime.today().strftime("%Y-%m-%d"),
                "maxGuests": bookingpal_rental_data.get("persons"),
                "losValue": [
                    instance.seven_nights if instance.seven_nights else 0,
                    instance.fourteen_nights if instance.fourteen_nights else 0,
                    instance.twenty_one_nights if instance.twenty_one_nights else 0,
                    instance.twenty_eight_nights if instance.twenty_eight_nights else 0
                ]
            }
            ]
        }
    }
    response, data = LosPricing().create(payload)
