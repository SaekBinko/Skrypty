# Instalacja czcionki Lato przez zdalną sesję PoSh

# Ściągnięcie fontu
$path = Get-Location
Write-Output $path
$url_font = 'http://www.latofonts.com/download/Lato2OFL.zip'
$output_font = "$path\Lato2OFL.zip"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url_font, $output_font)

# Rozpakowanie
Get-ChildItem $path -Filter Lato2OFL.zip | Expand-Archive -DestinationPath $path -Force 
$fontPath = "$path\Lato2OFL"
cd $fontPath

# Instalacja czcionek
# Lokalizacja C:\Windows\Fonts w kodzie
$fontPath = 'C:\Lato2OFL'
$FONTS = 0x14 
# Obiekt Shella
$objShell = New-Object -ComObject Shell.Application 
# Folder docelowy
$objFolder = $objShell.Namespace($FONTS) 
# Folder źródłowy
$fts = "$fontPath\*.ttf"
$objFolder.CopyHere($fts) 


# Dodanie informacji o fontach do rejestru Windows
$regPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Black (TrueType)" -PropertyType String -Value "Lato-Black.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Black Italic (TrueType)" -PropertyType String -Value "Lato-BlackItalic.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Bold (TrueType)" -PropertyType String -Value "Lato-Bold.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Bold Italic (TrueType)" -PropertyType String -Value "Lato-BoldItalic.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Heavy (TrueType))" -PropertyType String -Value "Lato-Heavy.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Heavy Italic (TrueType)" -PropertyType String -Value "Lato-HeavyItalic.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Italic (TrueType)" -PropertyType String -Value "Lato-Italic.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Medium (TrueType)" -PropertyType String -Value "Lato-Medium.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Medium Italic (TrueType)" -PropertyType String -Value "Lato-MediumItalic.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Regular (TrueType)" -PropertyType String -Value "Lato-Regular.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Semibold (TrueType)" -PropertyType String -Value "Lato-Semibold.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Semibold Italic (TrueType)" -PropertyType String -Value "Lato-SemiboldItalic.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Thin (TrueType)" -PropertyType String -Value "Lato-Thin.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato Thin Italic (TrueType)" -PropertyType String -Value "Lato-ThinItalic.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato-Hairline (TrueType)" -PropertyType String -Value "Lato-Hairline.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato-HairlineItalic (TrueType)" -PropertyType String -Value "Lato-HairlineItalic.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato-Light (TrueType)" -PropertyType String -Value "Lato-Light.ttf"
Get-Item -Path $regPath | New-ItemProperty -Name "Lato-LightItalic (TrueType)" -PropertyType String -Value "Lato-LightItalic.ttf"
