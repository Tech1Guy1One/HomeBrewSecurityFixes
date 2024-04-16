@echo off
sc config wuauserv start= disabled
sc config bits start= disabled
sc config usosvc start= disabled
sc config EventLog start= disabled
sc config LicenseManager start= disabled
sc config WpnService start= disabled
sc config edgeupdate start= disabled
sc config edgeupdatem start= disabled
net stop wuauserv
net stop bits
net stop usosvc
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
