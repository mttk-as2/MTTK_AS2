#Requires -Version 3.0
<#
.SYNOPSIS
    Download and install latest version of MongoDB Compass.

.DESCRIPTION
    A longer description.

.INPUTS
    Description of objects that can be piped to the script

.OUTPUTS
    Description of objects that are output by the script

.EXAMPLE
    Example of how to run the script

.LINK
    Links to further documentation

.NOTES
    Detail on what the script does, if this is needed
#>
param()
$ErrorActionPreference = 'Stop'

$CompassUrl = 'https://compass.mongodb.com/api/v2/download/latest/compass-community/stable/windows'

$TemporaryDir = [System.IO.Path]::GetTempPath()
$CompassExe = "$TemporaryDir" + "compass-install.exe"

Remove-Item $CompassExe -ErrorAction:Ignore

try {
    Write-Output "Downloading Compass from $CompassUrl"

    # Default PowerShell SecurityProtocol does not support Tls1.2 (required by domain)
    if ([Net.ServicePointManager]::SecurityProtocol.ToString() -NotMatch "Tls12") {
        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    }
    Invoke-WebRequest -Uri $CompassUrl -OutFile $CompassExe

    Write-Output "Installing Compass"
    & $CompassExe
    Write-Output "Successfully installed Compass"
} catch {
    # Fail silently. With the way that we've hooked into the MSI
    # currently we're not able to do any meaningful error reporting
    # and not crash the installer.
    Write-Output "Error installing Compass."
}

# Remove the binary we downloaded
Remove-Item $CompassExe -ErrorAction:Ignore
