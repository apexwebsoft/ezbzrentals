# Generated by Django 4.1 on 2023-02-02 17:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rentals', '0105_services'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='country',
            name='code',
        ),
        migrations.AddField(
            model_name='country',
            name='dialing_code',
            field=models.CharField(max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='rentalinstruction',
            name='country_code',
            field=models.CharField(max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='country',
            name='country_code',
            field=models.CharField(default=1, max_length=200),
            preserve_default=False,
        ),
    ]
