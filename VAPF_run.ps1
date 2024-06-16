param (
    [string]$newValue,
    [switch]$debug
)

# Define the file paths
$iniFile = "default.ini"
$tempFile = "temp_default.ini"
$searchString = "GAMEfilename="
$currentValue = ""

# Check if the new value is provided
if (-not $newValue) {
    Write-Host "Usage: .\update_ini.ps1 -newValue 'your_new_value' [-debug]"
    exit
}

# Check if the ini file exists
if (-not (Test-Path $iniFile)) {
    Write-Host "File $iniFile not found!"
    exit
}

# Create a temporary file to store the modified content
if (Test-Path $tempFile) {
    Remove-Item $tempFile
}

# Read the ini file and replace the matching line
Get-Content $iniFile | ForEach-Object {
    if ($_ -like "$searchString*") {
        $currentValue = $_.Substring($searchString.Length)
        "$searchString$newValue" | Out-File -Append -FilePath $tempFile
    } else {
        $_ | Out-File -Append -FilePath $tempFile
    }
}

# Debug information
if ($debug) {
    Write-Host "Current value: $currentValue"
    Write-Host "New value: $newValue"
    Write-Host "Running VAPF.exe"
}

# Replace the old ini file with the modified content
Move-Item -Force $tempFile $iniFile

# Run VAPF.exe
Start-Process "VAPF.exe"
