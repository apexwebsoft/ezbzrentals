# Generated by Django 4.1 on 2022-12-27 18:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('rentals', '0062_remove_currency_user_id'),
    ]

    operations = [
        migrations.CreateModel(
            name='AmenitiesType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('logo', models.ImageField(upload_to='amenities_logo')),
                ('status', models.BooleanField(default=True)),
            ],
            options={
                'db_table': 'amenities_type',
            },
        ),
        migrations.RemoveField(
            model_name='amenities',
            name='user_id',
        ),
        migrations.AddField(
            model_name='amenities',
            name='amenities_type',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='rentals.amenitiestype'),
            preserve_default=False,
        ),
    ]
