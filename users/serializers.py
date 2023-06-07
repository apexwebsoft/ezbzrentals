from rest_framework_json_api import serializers
from rentals.models import Bookings, Rental, RentalBed

class RentalSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Rental
        fields = ('id', 'rental_name')

class BookingsSerializer(serializers.HyperlinkedModelSerializer):
    rental_name = serializers.CharField(source='rental')
    checkin_date = serializers.DateTimeField(source='check_in')
    checkout_date = serializers.DateTimeField(source='check_out')
    user = serializers.CharField(source='user_id')

    class Meta:
        model = Bookings
        fields = ('rental_name', 'checkin_date', 'checkout_date', 'user')


class BedSerializer(serializers.HyperlinkedModelSerializer):
    bedType=serializers.CharField(source='name')
    count=serializers.CharField(source='no_of_beds')
    user_id = serializers.IntegerField()
    rental_id = serializers.IntegerField()

    class Meta:
        model = RentalBed
        fields = ('bedType', 'count', 'user_id', 'rental_id')