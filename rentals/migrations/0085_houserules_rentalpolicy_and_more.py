# Generated by Django 4.1 on 2023-01-04 21:13

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rentals', '0084_earlybirddiscount_longstaydiscount'),
    ]

    operations = [
        migrations.CreateModel(
            name='HouseRules',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('for_kid', models.CharField(max_length=100)),
                ('wheelchair_access', models.CharField(max_length=100)),
                ('parties_allowed', models.CharField(max_length=100)),
                ('smoking_allowed', models.CharField(max_length=100)),
                ('pets', models.CharField(max_length=100)),
                ('house_rules', models.TextField(max_length=3000)),
                ('status', models.BooleanField(default=True)),
                ('user_id', models.IntegerField()),
                ('rental_id', models.IntegerField()),
            ],
            options={
                'db_table': 'rental_house_rules',
            },
        ),
        migrations.CreateModel(
            name='RentalPolicy',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
                ('description', models.TextField(max_length=3000)),
                ('status', models.BooleanField(default=True)),
                ('user_id', models.IntegerField()),
                ('rental_id', models.IntegerField()),
            ],
            options={
                'db_table': 'rental_policy',
            },
        ),
        migrations.AlterModelTable(
            name='earlybirddiscount',
            table='rental_earlybird_discount',
        ),
        migrations.AlterModelTable(
            name='longstaydiscount',
            table='rental_longstay_discount',
        ),
    ]
