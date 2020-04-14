

$sysprep = 'C:\Windows\System32\Sysprep\Sysprep.exe'
$arg = '/generalize /oobe /shutdown' # /quiet

Start-Process -FilePath $sysprep -ArgumentList $arg -wait

