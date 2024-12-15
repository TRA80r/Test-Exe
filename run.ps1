$randomText = "RandomText_" + (Get-Random -Maximum 100000)
$filePath = "C:\Windows\input.txt"
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "This script needs to be run as Administrator." -ForegroundColor Red
    exit
}
Set-Content -Path $filePath -Value $randomText
Write-Host "Random text has been saved to $filePath"
