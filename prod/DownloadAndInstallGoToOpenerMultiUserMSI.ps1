<# Deployment information
- Date: 11 August 2024
#>

# Define the path to the directory
$directoryPath = "C:\Temp\GoToOpener"

# Check if the directory exists
if (-not (Test-Path -Path $directoryPath -PathType Container)) {
    # Create the directory if it does not exist
    New-Item -Path $directoryPath -ItemType Directory -Verbose
    Write-Host "Directory created: $directoryPath"
} else {
    Write-Host "Directory already exists: $directoryPath"
}

# Define the URL of the installer
$url = "https://meet.goto.com/openerbinaries/latest/GoToOpenerMultiUser.msi"

# Define the destination path
$destination = "C:\Temp\GoToOpener\GoToOpenerMultiUser.msi"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $destination -Verbose

# Install the MSI silently
Start-Process msiexec.exe -ArgumentList "/i `"$destination`" /quiet /norestart" -Wait -Verbose