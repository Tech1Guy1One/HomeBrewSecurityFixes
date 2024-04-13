reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f /v requiresecuritysignature /t Reg_DWORD /d 1
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters" /f /v EnableSecuritySignature /t REG_DWORD /d 1
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanManWorkstation\Parameters" /f /v RequireSecuritySignature /t REG_DWORD /d 1
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanManWorkstation\Parameters" /f /v EnableSecuritySignature /t REG_DWORD /d 1 

