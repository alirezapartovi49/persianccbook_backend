# Generated by Django 5.1 on 2024-09-09 16:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0003_alter_chapter_chapter_number_alter_page_page_number_and_more'),
    ]

    operations = [
        migrations.AlterUniqueTogether(
            name='chapter',
            unique_together=set(),
        ),
        migrations.AlterUniqueTogether(
            name='page',
            unique_together=set(),
        ),
    ]
