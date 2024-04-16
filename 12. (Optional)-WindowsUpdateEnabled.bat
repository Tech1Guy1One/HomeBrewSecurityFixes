@echo off
sc config wuauserv start= demand
sc config bits start= demand
sc config usosvc start= demand
sc config EventLog start= demand
sc config LicenseManager start= demand
sc config WpnService start= demand
sc config edgeupdate start= demand
sc config edgeupdatem start= demand
exit
