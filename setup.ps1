Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

copy 'D:\2017 minecraft map save files.zip' ~/Desktop
Unzip '2017 minecraft map save files.zip' 'Save Files'
copy 'D:\Basic Resource Pack.zip' ~/Desktop
Unzip 'Basic Resource Pack.zip' 'Your Name Resource Pack'

$location='C:\Users\'+$env:USERNAME+'\Desktop\Save Files\2017 minecraft map save files\*'
$destination=$env:APPDATA+'\.minecraft\saves'
copy $location $destination -recurse

Read-Host -Prompt "Done"