# Generated by Django 4.1 on 2023-01-10 14:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rentals', '0102_seasonalrates_checkin_days_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='basicrates',
            name='checkin_days',
            field=models.CharField(default=True, max_length=100),
        ),
        migrations.AddField(
            model_name='basicrates',
            name='checkout_days',
            field=models.CharField(default=True, max_length=100),
        ),
    ]
