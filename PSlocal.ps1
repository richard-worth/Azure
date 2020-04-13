#variables
$regionalsettingsURL = "https://nhctpsfiles734473024.blob.core.windows.net/psscripts/GB_Region.xml"
$RegionalSettings = "C:\UK_Region.xml"
$LocalePSURL = "https://nhctpsfiles734473024.blob.core.windows.net/psscripts/Locale.ps1"
$LocalePS = "C:\Locale.ps1"

#downnload regional settings file
$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($regionalsettingsURL,$RegionalSettings)

$webclient = New-Object System.Net.WebClient
$webclient.DownloadFile($LocalePSURL,$LocalePS)

& $LocalePS

