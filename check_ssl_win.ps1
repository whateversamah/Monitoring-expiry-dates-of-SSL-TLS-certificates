$cert_exp=certutil.exe -verify $args[0]| Select-String -pattern "NotAfter" | Select-Object -first 1
$cert_exp=$cert_exp.ToString()
$cert_exp=$cert_exp.Split(" ")
 
$exp=[datetime]::parseexact($cert_exp[3], 'dd/MM/yyyy', $null).ToString('yyyy-MM-dd')
   $now_date=Get-Date -Format "yyyy-MM-dd"
 
    echo (New-TimeSpan -Start $now_date -End $exp).Days
