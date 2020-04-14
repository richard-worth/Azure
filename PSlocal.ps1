#variables
$regionalsettingsURL = "https://raw.githubusercontent.com/richard-worth/Azure/master/GB_Region.xml"
$RegionalSettings = "C:\UK_Region.xml"
$LocalePSURL = "https://raw.githubusercontent.com/richard-worth/Azure/master/Locale.ps1"
$LocalePS = "C:\Locale.ps1"

#downnload regional settings file
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($regionalsettingsURL,$RegionalSettings)

$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($LocalePSURL,$LocalePS)

& $LocalePS

