# Generate some random text
$randomText = "RandomText_" + (Get-Random -Maximum 100000)

# Define the file path
$filePath = "C:\Windows\input.txt"

# Check if the script is running with administrator privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "This script needs to be run as Administrator." -ForegroundColor Red
    exit
}

# Save the random text to the file
Set-Content -Path $filePath -Value $randomText

Write-Host "Random text has been saved to $filePath"
