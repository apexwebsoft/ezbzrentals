from rentals.models import ExtraServices, LongStayDiscount, Rental, RentalLocation, RentalRoom, RentalTax, RentalsGallery, SeasonalRates, UserProfile
from django.db.models.signals import post_save, pre_delete
from django.dispatch import receiver
from users.booking_pal_api import FeeAndTax, LosPricing, ProductImages, ProductManager, PropertyManager, RatesAndAvailability
from datetime import datetime


@receiver(post_save, sender=UserProfile)
def create_update_property_manager(sender, instance, created, **kwargs):
    payload = {
        "data": {
            "isCompany": False,
            "companyDetails": {
                "companyName": instance.user.get_full_name(),
                "fullName": instance.user.get_full_name(),
                "companyAddress": {
                    "country": instance.country,
                    "state": instance.state,
                    "streetAddress": instance.address,
                    "city": instance.city,
                    "zip": instance.postal_code
                },
                "email": instance.user.email,
                "phone": {
                    "countryCode": "+1",
                    "number": instance.phone
                },
            },
        }
    }
    if created:
        # Create property manager in BookingPal
        response, data = PropertyManager().create(payload)
        if response:
            instance.bookingpal_id = data.get('data')[0].get('id')
            instance.save()
    else:
        # Update property manager in BookingPal
        payload["data"]["id"] = instance.bookingpal_id
        response, data = PropertyManager().update(payload)

@receiver(post_save, sender=Rental)
def create_update_rental_product(sender, instance, created, **kwargs):
    rental_location = RentalLocation.objects.filter(rental_id=instance.id)
    payload = {
        "data": {
            "name": instance.rental_name,
            "rooms": 1,
            "bathrooms": 1,
            "persons": 2,
            "propertyType": "PCT102",
            "currency": "USD",
            "location": {
                "postalCode": rental_location.first().postal if rental_location.first() else "901821",
                "country": rental_location.first().country if rental_location.first() else "US",
                "region": rental_location.first().state if rental_location.first() else "Illinois",
                "city": rental_location.first().city if rental_location.first() else "Chicago",
                "street": rental_location.first().address if rental_location.first() else "210 North Wells Street",
                "zipCode9": rental_location.first().postal if rental_location.first() else "901821"
            },
        }
    }
    if created:
        # Create property manager in BookingPal
        response, data = ProductManager().create(payload)
        if response:
            instance.bookingpal_id = data.get('data')[0].get('id')
            instance.save()
    else:
        # Update property manager in BookingPal
        payload["data"]["id"] = instance.bookingpal_id
        response, data = ProductManager().update(payload)
        if instance.status:
            response, data = ProductManager().activate([int(instance.bookingpal_id)])
        else:
            response, data = ProductManager().deactivate([int(instance.bookingpal_id)])

@receiver(pre_delete, sender=Rental)
def delete_rental_product(sender, instance, using, **kwargs):
    if instance.bookingpal_id:
        response, data = ProductManager().delete(instance.bookingpal_id)

@receiver(post_save, sender=RentalLocation)
def update_rental_location(sender, instance, created, **kwargs):
    rental = Rental.objects.get(id=instance.rental_id)
    rental_room = RentalRoom.objects.filter(rental_id=instance.rental_id).first()
    payload = {
        "data": {
            "id": rental.bookingpal_id,
            "name": rental.rental_name,
            "rooms": eval(rental_room.no_of_rooms)[2] if rental_room else 1,
            "bathrooms": eval(rental_room.no_of_rooms)[1] if rental_room else 1,
            "persons": 2,
            "propertyType": "PCT102",
            "currency": "USD",
            "location": {
                "postalCode": instance.postal if instance.postal else "901821",
                "country": instance.country if instance.country else "US",
                "region": instance.state if instance.state else "Illinois",
                "city": instance.city if instance.city else "Chicago",
                "street": instance.address if instance.address else "210 North Wells Street",
                "zipCode9": instance.postal if instance.postal else "901821"
            },
        }
    }
    # Update property manager in BookingPal
    response, data = ProductManager().update(payload)

@receiver(post_save, sender=RentalRoom)
def update_rental_rooms(sender, instance, created, **kwargs):
    rental = Rental.objects.get(id=instance.rental_id)
    rental_location = RentalLocation.objects.filter(rental_id=rental.id).first()
    payload = {
        "data": {
            "id": rental.bookingpal_id,
            "name": rental.rental_name,
            "rooms": instance.no_of_rooms[2],
            "bathrooms": instance.no_of_rooms[1],
            "persons": 2,
            "propertyType": "PCT102",
            "currency": "USD",
            "location": {
                "postalCode": rental_location.postal if rental_location else "901821",
                "country": rental_location.country if rental_location else "US",
                "region": rental_location.state if rental_location else "Illinois",
                "city": rental_location.city if rental_location else "Chicago",
                "street": rental_location.address if rental_location else "210 North Wells Street",
                "zipCode9": rental_location.postal if rental_location else "60606-1330"
            },
        }
    }
    # Update property manager in BookingPal
    response, data = ProductManager().update(payload)

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
