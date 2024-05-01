@echo off
# Disable Printers, Bluetooth, Scanners, mobile phones, music players, cameras, usb disks, usb attached storage, and XBX Live connections. 
# This does not disable all connected devices on all systems.. This may or may not cause system issues. 
# sc config CDPSvc start= demand 
sc config CDPSvc start= disabled
# Diagtrack is the service that connects your system to the microsoft hive for data transfer.
# sc config DiagTrack start= demand
sc config DiagTrack start= disabled
# NCBService or Network connection Broker is a catch 22 service. While it does provide network connection data in the task bar, it also provides microsoft with the telemetry service
# details and location service details, even when location services are disable. Disabling this service will require all network connection settings be controlled in control panel. 
# sc config NcbService start= demand
sc config NcbService start= disabled
# SENS or System Event Notification Services is used to communicate LAN and Application details to remote locations. 
# This process is used to transmit data that contains application user details to 3rd party application developers. 
# Disabling this service may cause issues with TCP quality related alerts in the event viewer, it may also cause issues with QOC details and data. 
# sc config SENS start= demand 
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
