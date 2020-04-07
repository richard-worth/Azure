#variables
$regionalsettingsURL = "https://raw.githubusercontent.com/richard-worth/Azure/master/UK_Region.xml"
#https://nnuhpsfiles20402293.blob.core.windows.net/psscripts/GB_Region.xml
#https://raw.githubusercontent.com/richard-worth/Azure/master/UK_Region.xml
$RegionalSettings = "C:\UK_Region.xml"


#downdload regional settings file
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($regionalsettingsURL,$RegionalSettings)

# Set Locale, language etc. 
& $env:SystemRoot\System32\control.exe "intl.cpl,,/f:`"$RegionalSettings`""

# Set languages/culture. Not needed perse.
Set-WinSystemLocale en-GB 
Set-WinUserLanguageList -LanguageList en-GB -Force
Set-Culture -CultureInfo en-GB 
Set-WinHomeLocation -GeoId 242 
Set-TimeZone -Name "GMT Standard Time"

#$sysprep = 'C:\Windows\System32\Sysprep\Sysprep.exe'
#$arg = '/generalize /oobe /shutdown /quiet'

#Start-Process -FilePath $sysprep -ArgumentList $arg -wait

