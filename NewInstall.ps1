# How to run "PowerShell -ExecutionPolicy Bypass -File "location of file."

# ----------------------------------------------
# PowerShell Script Automation
# ----------------------------------------------

# ------------------------------
# Configuration
# ------------------------------
# Set the Region and time zone
Set-WinUILanguageOverride -Language "en-AU"
Set-TimeZone -Id "W. Australia Standard Time"

# ------------------------------
# Activation
# ------------------------------
# Activate Windows/Office
Write-Host "Activating Windows/Office..."
Invoke-RestMethod -Uri 'https://massgrave.dev/get' | Invoke-Expression

# ------------------------------
# Winget Update/Installation
# ------------------------------
Write-Host "Updating/Installing Winget..."
Add-AppxPackage -Path 'https://github.com/microsoft/winget-cli/releases/latest/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle'

# ------------------------------
# VisualCppRedist Installation
# ------------------------------
Write-Host "Downloading and Installing VisualCppRedist..."
$URL = 'https://github.com/abbodi1406/vcredist/releases/latest/download/VisualCppRedist_AIO_x86_x64.exe'
$DOWNLOAD_PATH = Join-Path $env:TEMP 'VisualCppRedist_AIO_x86_x64.exe'

# Download the executable using PowerShell
Invoke-WebRequest -Uri $URL -OutFile $DOWNLOAD_PATH

# Check if the download was successful and run the executable
if (Test-Path $DOWNLOAD_PATH) {
    # Run the executable in passive mode
    Start-Process -FilePath $DOWNLOAD_PATH -ArgumentList '/y' -Wait
} else {
    Write-Error "Failed to download VisualCppRedist from $URL"
}

# ------------------------------
# Winget Software Installation
# ------------------------------
winget install -e --id Microsoft.DotNet.SDK.Preview
winget install -e --id Microsoft.XNARedist
winget install -e --id Microsoft.DirectX
winget install -e --id Mozilla.Firefox

# ------------------------------
# Winutil Execution
# ------------------------------
Write-Host "Running Winutil..."
Invoke-RestMethod -Uri 'https://christitus.com/win' | Invoke-Expression

# ------------------------------
# Disable Recycle Bin Icon on the Desktop
# ------------------------------

# Define the path to the registry key
$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"

# Define the name of the registry value for the Recycle Bin
$regName = "{645FF040-5081-101B-9F08-00AA002F954E}"

# Set the registry value to hide the Recycle Bin
Set-ItemProperty -Path $regPath -Name $regName -Value 1

# ------------------------------
# Ublock Installation
# ------------------------------
Start-Process "https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/"

# ------------------------------
# Script Completion
# ------------------------------
Write-Host "Script completed."

