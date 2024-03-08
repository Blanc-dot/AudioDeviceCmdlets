# Import the AudioDevice module if not already imported
Import-Module AudioDevice -ErrorAction SilentlyContinue

# Get all audio devices
$audioDevices = Get-AudioDevice -List

# Find the desired audio device
$desiredDevice = $audioDevices | Where-Object { $_.Name -eq "Line 1 (Virtual Audio Cable)" -and $_.Type -eq "Recording" }

if ($desiredDevice) {
    # Set the default recording communication device to the desired device
    Set-AudioDevice -Index $desiredDevice.Index -CommunicationOnly

    Write-Host "Default recording communication device changed to $($desiredDevice.Name)."
} else {
    Write-Host "Desired recording communication device 'Line 1 (Virtual Audio Cable)' not found."
}
