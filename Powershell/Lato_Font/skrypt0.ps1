# Instalacja czcionki Lato przez zdalną sesję PoSh
# Uruchom poleceniem ./skrypt0.ps1 -Computer D0N18C2

# Dane połączenia - parametr Computer
param(
[Parameter(Mandatory=$true,Position=0)]
[ValidateNotNull()]
[array]$Computer
)

# Credki
$creds = Get-Credential
$session = New-PSSession -ComputerName $Computer -Credential $creds
$src = "C:\AdminTools\ZdalnaInstalacjaCzcionek\skrypt1.ps1"
$dst = "C:\skrypt1.ps1"
Copy-Item -Path $src -Destination $dst -ToSession $session

Invoke-Command -Session $session -File $src
Invoke-Command -ComputerName $Computer -Credential $creds -ScriptBlock {Remove-Item "C:\skrypt1.ps1"}

# Zamknięcie sesji PoSh
Remove-PSSession -Session $session
