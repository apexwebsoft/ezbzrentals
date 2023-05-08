# Generated by Django 4.1 on 2022-10-18 11:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rentals', '0024_rental'),
    ]

    operations = [
        migrations.AddField(
            model_name='rental',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='rental',
            name='status',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='rental',
            name='updated_at',
            field=models.DateTimeField(auto_now=True),
        ),
    ]
