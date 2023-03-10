from django.db import models
from mpo.models import Site 
from users.models import MedewerkerProfile
from project.models import Project 
# Create your models here.

class Testrapport(models.Model):
    site = models.ForeignKey(Site, on_delete=models.CASCADE)
    project = models.ForeignKey(Project, on_delete=models.CASCADE)
    last_edit_datum = models.CharField(max_length=30,null=True,default='')
    author = models.ForeignKey(MedewerkerProfile, on_delete=models.CASCADE)
    # binnendel velden
    druktest = models.BooleanField(default=False)
    druktest_datum = models.CharField(max_length=30,null=True,default='')
    luchtest = models.BooleanField(default=False)
    luchtest_datum = models.CharField(max_length=30,null=True,default='')
    druk_cv = models.CharField(max_length=30,null=True,default='')
    flow_cv = models.CharField(max_length=30,null=True,default='')
    standtijd_cv = models.CharField(max_length=30,null=True,default='')
    druktap = models.CharField(max_length=30,null=True,default='')
    standtijd_druktap = models.CharField(max_length=30,null=True,default='')
    npidatatestuitgevoerd = models.BooleanField(default=False)
    npidatatesuitgevoerd_datum = models.CharField(max_length=30,null=True,default='')
    programmeerSD_kaart = models.BooleanField(default=False)
    aanvoertemp = models.IntegerField(null=True,default=0)
    tijd_legionella = models.CharField(max_length=30,null=True,default='')
    #serienummers
    frame = models.CharField(max_length=30,null=True,default='')
    sem_gateway = models.CharField(max_length=30,null=True,default='')
    sem_mac_adres = models.CharField(max_length=30,null=True,default='')
    warmtepomp_binnen_ftc_unit = models.CharField(max_length=30,null=True,default='')
    warmtepomp_buiten = models.CharField(max_length=30,null=True,default='')
    procon = models.CharField(max_length=30,null=True,default='')
    ventilatie_wtw = models.CharField(max_length=30,null=True,default='')
    kamstrup_21_rond = models.CharField(max_length=30,null=True,default='')
    kamstrup_403_landis_t230 = models.CharField(max_length=30,null=True,default='')
    flowmeter = models.CharField(max_length=30,null=True,default='')
    display_mac_adres_homecontroller = models.CharField(max_length=30,null=True,default='')
    boiler = models.CharField(max_length=30,null=True,default='')
    #dakunit
    spinvlies_voldoende = models.BooleanField(default=False)
    bekabeling_voldoende = models.BooleanField(default=False)
    lekvrij_door_blower_door_test = models.BooleanField(default=False)
    spinvlies_zijkanten = models.BooleanField(default=False)
    eindschoonmaak_binnenzijde = models.BooleanField(default=False)
    stikstof_en_vacumeren_module = models.CharField(max_length=30,null=True,default='')
    stikstof_sterkte_bar = models.CharField(max_length=30,null=True,default='')
    stikstof_sterkte_standtijd = models.CharField(max_length=30,null=True,default='')
    vacumeren_module_micron = models.CharField(max_length=30,null=True,default='')
    vacumeren_module_standtijd = models.CharField(max_length=30,null=True,default='')
    lekdetectie = models.BooleanField(default=False)
    lekdetectie_datum = models.CharField(max_length=30,null=True,default='')
    #andere data's
    sn_label_op_frame = models.BooleanField(default=False)
    wtw_debieten_control = models.BooleanField(default=False)
    transportlabel_uitgevoerd = models.BooleanField(default=False)
    eindschoonmaak_uitgevoerd = models.BooleanField(default=False)
    transport_gereed = models.BooleanField(default=False)
    transport_gereed_datum = models.CharField(max_length=30,null=True,default='')
    eindcontrole = models.BooleanField(default=False)
    eindcontrole_datum = models.CharField(max_length=30,null=True,default='')
    testrapport_definitief = models.BooleanField(default=False)
    testrapport_definitief_datum = models.CharField(max_length=30,null=True,default='')
