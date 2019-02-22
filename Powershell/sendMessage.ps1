# Uruchom skrypt przez:
# ./sendMessage.ps1 -kom NAZWA -msg "Tekst wiadomości"

# Dane połączenia
param(
[Parameter(Mandatory=$true,Position=0)]
[ValidateNotNull()]
[string]$kom,
[Parameter(Mandatory=$true,Position=1)]
[ValidateNotNull()]
[string]$msg,
)


# Metoda alternatywna - bez parametrów:
#
# $kom = Read-Host "Podaj nazwę komputera lub adres IP "
# $msg = Read-Host "Wpisz wiadomość "

# Wysyłanie wiadomości
Invoke-WmiMethod -Path Win32_Process -Name Create -ArgumentList "msg * $msg" -ComputerName $kom
