@echo off
sc config CDPSvc start= disabled
sc config DiagTrack start= disabled
sc config NcbService start= disabled
sc config SENS start= disabled
sc config Schedule start= disabled
sc config TokenBroker start= disabled
sc config EventLog start= disabled
sc config LicenseManager start= disabled
sc config WpnService start= disabled
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
net stop edgeupdatem
net stop edgeupdate
net stop WpnService
net stop LicenseManager
net stop EventLog
net stop TokenBroker
net stop Schedule
net stop SENS
net stop NcbService
net stop CDPSvc
net stop DiagTrack
exit