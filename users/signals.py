from rentals.models import ExtraServices, Rental, RentalLocation, RentalRoom, RentalTax, RentalsGallery, UserProfile
from django.db.models.signals import post_save, pre_delete
from django.dispatch import receiver
from users.booking_pal_api import FeeAndTax, ProductImages, ProductManager, PropertyManager


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
                "postalCode": rental_location.postal if rental_location.first() else "901821",
                "country": rental_location.country if rental_location.first() else "US",
                "region": rental_location.state if rental_location.first() else "Illinois",
                "city": rental_location.city if rental_location.first() else "Chicago",
                "street": rental_location.address if rental_location.first() else "210 North Wells Street",
                "zipCode9": rental_location.postal if rental_location.first() else "901821"
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
    response, data = ProductManager().delete(instance.bookingpal_id)

@receiver(post_save, sender=RentalLocation)
def update_rental_location(sender, instance, created, **kwargs):
    rental = Rental.objects.get(id=instance.rental_id)
    rental_room = RentalRoom.objects.filter(rental_id=instance.rental_id).first()
    payload = {
        "data": {
            "id": rental.bookingpal_id,
            "name": rental.rental_name,
            "rooms": rental_room.no_of_rooms if rental_room else 1,
            "bathrooms": rental_room.no_of_rooms if rental_room else 1,
            "persons": 2,
            "propertyType": "PCT102",
            "currency": "USD",
            "location": {
                "postalCode": instance.postal,
                "country": instance.country,
                "region": instance.state,
                "city": instance.city,
                "street": instance.address,
                "zipCode9": instance.postal
            },
        }
    }
    # Update property manager in BookingPal
    response, data = ProductManager().update(payload)

@receiver(post_save, sender=RentalRoom)
def update_rental_location(sender, instance, created, **kwargs):
    rental = Rental.objects.get(id=instance.rental_id)
    rental_location = RentalLocation.objects.filter(rental_id=rental.id).first()
    payload = {
        "data": {
            "id": rental.bookingpal_id,
            "name": rental.name,
            "rooms": instance.no_of_rooms,
            "bathrooms": instance.no_of_rooms,
            "persons": 2,
            "propertyType": "PCT102",
            "currency": "USD",
            "location": {
                "postalCode": rental_location.postal if rental_location.first() else "901821",
                "country": rental_location.country if rental_location.first() else "US",
                "region": rental_location.state if rental_location.first() else "Illinois",
                "city": rental_location.city if rental_location.first() else "Chicago",
                "street": rental_location.address if rental_location.first() else "210 North Wells Street",
                "zipCode9": rental_location.postal if rental_location.first() else "60606-1330"
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

@receiver(pre_delete, sender=Rental)
def delete_rental_product(sender, instance, using, **kwargs):
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
                        "value": int(instance.service_price),
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
