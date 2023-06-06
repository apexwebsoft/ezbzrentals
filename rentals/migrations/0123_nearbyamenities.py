# Generated by Django 4.1 on 2023-05-29 15:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rentals', '0122_amenities_code'),
    ]

    operations = [
        migrations.CreateModel(
            name='NearByAmenities',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('code', models.CharField(max_length=100)),
                ('distance', models.CharField(default=0, max_length=100)),
                ('status', models.BooleanField(default=True)),
            ],
            options={
                'db_table': 'nearby_amenities',
            },
        ),
    ]
