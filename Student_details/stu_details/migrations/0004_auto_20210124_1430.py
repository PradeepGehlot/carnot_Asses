# Generated by Django 3.1.5 on 2021-01-24 14:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('stu_details', '0003_auto_20210124_1236'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='last_name',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]
