# Generated by Django 4.1 on 2023-01-05 13:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rentals', '0085_houserules_rentalpolicy_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='country',
            name='country_code',
            field=models.CharField(max_length=200, null=True),
        ),
    ]
