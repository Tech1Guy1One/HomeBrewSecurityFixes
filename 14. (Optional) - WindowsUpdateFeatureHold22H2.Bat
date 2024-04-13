reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f /v TargetReleaseVersion /t Reg_DWORD /d 1
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f /v ProductVersion /t Reg_SZ /d "Windows 10"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f /v TargetReleaseVersionInfo /t Reg_SZ /d "22H2"