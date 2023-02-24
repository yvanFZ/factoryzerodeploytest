# Generated by Django 3.2.15 on 2023-02-20 17:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('project', '0001_initial'),
        ('mpo', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='site',
            name='projectId',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='project', to='project.project'),
        ),
        migrations.AddField(
            model_name='bewoners',
            name='site',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='sitebewoner', to='mpo.site'),
        ),
        migrations.CreateModel(
            name='Boiler',
            fields=[
                ('inhoud', models.IntegerField(default=True, null=True)),
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
            ],
        ),
        migrations.CreateModel(
            name='IcemDebiet',
            fields=[
                ('stand1', models.IntegerField(default=True, null=True)),
                ('stand2', models.IntegerField(default=True, null=True)),
                ('stand3', models.IntegerField(default=True, null=True)),
                ('stand4', models.IntegerField(default=True, null=True)),
                ('stand5', models.IntegerField(default=True, null=True)),
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
            ],
        ),
        migrations.CreateModel(
            name='Omvormer',
            fields=[
                ('merkOmvormer', models.CharField(default=True, max_length=30, null=True)),
                ('dakheling', models.IntegerField(default=True, null=True)),
                ('capaciteit', models.IntegerField(default=True, null=True)),
                ('owner', models.BooleanField(null=True)),
                ('levering_door', models.BooleanField(null=True)),
                ('levering_datum', models.CharField(default=True, max_length=30, null=True)),
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
            ],
        ),
        migrations.CreateModel(
            name='Planning',
            fields=[
                ('bouwrouting', models.IntegerField(default=True, null=True)),
                ('leverdatum', models.CharField(default=True, max_length=30, null=True)),
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
            ],
        ),
        migrations.CreateModel(
            name='ProductiebonStatus',
            fields=[
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
                ('productiegereed', models.CharField(default=True, max_length=30, null=True)),
                ('productieDatum', models.CharField(default=True, max_length=30, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='ProductieExact',
            fields=[
                ('bomId', models.IntegerField(default=True, null=True)),
                ('exactnummer', models.IntegerField(default=True, null=True)),
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
            ],
        ),
        migrations.CreateModel(
            name='Semkast',
            fields=[
                ('type', models.CharField(default=True, max_length=30, null=True)),
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
            ],
        ),
        migrations.CreateModel(
            name='Warmtepomp',
            fields=[
                ('vermogen', models.FloatField(default=True, null=True)),
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
            ],
        ),
        migrations.CreateModel(
            name='WTW',
            fields=[
                ('merk', models.CharField(default=True, max_length=30, null=True)),
                ('type', models.CharField(default=True, max_length=30, null=True)),
                ('debiet', models.IntegerField(default=True, null=True)),
                ('icem', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='mpo.icem')),
            ],
        ),
    ]
