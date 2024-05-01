# Included in this script is a description as to what each of these services do, keep in mind that while I try to provide some details as to what each thing can break, there's additional customizations
# on each system that I am unable to know for sure. As such, please use this script as a baseline, and modify what you want, or revert what you want. 


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
# Schedule is the serice associate with task scheduler. This is optional as if you disable this, scheduled tasks will fail to run. 
# disabling this service can have issues if you have scheduled tasks, they won't run, but this also means that tasks, or background unknown tasks will not run 
# sc config Schedule start= demand
sc config Schedule start= disabled
# Tokenbroker is used for Windows Store, XBox Connections, and Microsoft logon. This service when running allows the hive to connect directly to your machine. 
# WARNING!!! if you disable TokenBroker and have an online Microsoft account for authentication, you will likely brick your access. 
# sc config TokenBroker start= demand
sc config TokenBroker start= disabled
# Event log is just that, the event log, if you don't need logs, then you can disable this service and save some performance.. Every little bit helps.. 
# sc config EventLog start= demand
sc config EventLog start= disabled
# Once your OS is licensed, the OS will not prompt again to be licensed, this service is not for that, it's for proving legit OS status with the Microsoft Store. 
# The microsoft Store provides microsoft with Telemetry to microsoft. As such this should be disabled. 
# sc config LicenseManager start= demand
sc config LicenseManager start= disabled
# WPN or windows Push Notifications is basically a new net send application. This process allows 3rd parties to push ads to your systems, they call it content, but it's ads. 
# Disabling this service will cause issues with getting cheap viagra. This may reduce your Viagra surplus. 
# sc config WpnService start= demand
sc config WpnService start= disabled
# EdgeUpdate as the name suggests, this is the update service for Microsoft Edge. 
# NOTE, you may not be able to stop the edge update service on vanilla windows, this is a known issue.. 
# sc config edgeupdate start= demand 
sc config edgeupdate start= disabled
# the Edgeupdatem service is a COM service needed to run the EdgeUpdate service itself. Either Both need to be enabled, or both disabled. 
# sc config edgeupdatem start= demand
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
