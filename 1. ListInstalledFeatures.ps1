mkdir c:\tools
Dism /online /get-features | out-file -filepath C:\tools\FeatureData.log
