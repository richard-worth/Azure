# Set Locale, language etc.
& $env:SystemRoot\System32\control.exe "intl.cpl,,/f:`"$RegionalSettings`""   


# Set languages/culture. Not needed perse.

    Set-WinSystemLocale en-GB    
    Set-WinUserLanguageList -LanguageList en-GB -Force    
    Set-Culture -CultureInfo en-GB    
    Set-WinHomeLocation -GeoId 242    
    Set-TimeZone -Name "GMT Standard Time"    

