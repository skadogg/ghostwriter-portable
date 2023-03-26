
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://github.com/wereturtle/ghostwriter/releases/download/2.1.6/ghostwriter_2.1.6_win64_portable.zip'

$packageName = $env:ChocolateyPackageName

$checksum64 = 'F3B3408F12A01D05C5AD360147949E3A15C7DF8ED7EEFA8D2A408B90B27D14F5'
$checksumType64 = 'sha256'

$targetPath = "$toolsDir\ghostwriter.exe"
$iconLocation = $targetPath

Install-ChocolateyZipPackage -PackageName $packageName -UnzipLocation $toolsDir -Url64bit $url64 -checksum64 $checksum64 -checksumType64 $checksumType64
Install-ChocolateyShortcut -ShortcutFilePath "$env:ALLUSERSPROFILE\Desktop\ghostwriter.lnk" -TargetPath $targetPath -IconLocation $iconLocation
Install-ChocolateyShortcut -ShortcutFilePath "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\ghostwriter.lnk" -TargetPath $targetPath -IconLocation $iconLocation
