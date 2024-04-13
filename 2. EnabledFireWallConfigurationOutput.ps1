mkdir c:\tools
﻿get-netfirewallrule -policystore activestore -enabled true | out-file -filepath C:\tools\FirewallDetailOriginal.log
