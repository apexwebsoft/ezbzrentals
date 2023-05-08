# Generated by Django 4.1 on 2022-10-17 14:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rentals', '0020_alter_bookings_check_in_alter_bookings_check_out'),
    ]

    operations = [
        migrations.CreateModel(
            name='DiscountType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('discounttype_name', models.CharField(max_length=100)),
                ('status', models.BooleanField(default=True)),
            ],
            options={
                'db_table': 'discount_type',
            },
        ),
    ]
