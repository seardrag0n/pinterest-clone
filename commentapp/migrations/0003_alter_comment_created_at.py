# Generated by Django 4.0.5 on 2022-07-01 05:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('commentapp', '0002_alter_comment_created_at'),
    ]

    operations = [
        migrations.AlterField(
            model_name='comment',
            name='created_at',
            field=models.DateTimeField(auto_now=True),
        ),
    ]