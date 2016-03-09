# Add Exchange Server SQL Support
# More information: https://goo.gl/QiTtDo 

# Registry path to HKLM Exchange
$registryPath = "HKLM:SOFTWARE\Microsoft\ExchangeServer\v15"

# Name of hidden key
$Name = "LobsterMapiDB"

# Activate SQL support
$value = "1"

if(!(Test-Path $registryPath)) {

    New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType DWORD -Force | Out-Null

}