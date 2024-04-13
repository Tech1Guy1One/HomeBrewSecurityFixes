@echo off
sc config wuauserv start= disabled
sc config bits start= disabled
sc config usosvc start= disabled
net stop wuauserv
net stop bits
net stop usosvc
exit