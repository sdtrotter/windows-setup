# Description: Boxstarter Script
# Author: Scott Trotter (forked from Microsoft)
# Set up my main system

Disable-UAC

# Get the base URI path from the ScriptToCall value
$bstrappackage = "-bootstrapPackage"
$helperUri = $Boxstarter['ScriptToCall']
$strpos = $helperUri.IndexOf($bstrappackage)
$helperUri = $helperUri.Substring($strpos + $bstrappackage.Length)
$helperUri = $helperUri.TrimStart("'", " ")
$helperUri = $helperUri.TrimEnd("'", " ")
$helperUri = $helperUri.Substring(0, $helperUri.LastIndexOf("/"))
$helperUri += "/scripts"
write-host "helper script base URI is $helperUri"

function executeScript {
    Param ([string]$script)
    write-host "executing $helperUri/$script ..."
    Invoke-Expression ((new-object net.webclient).DownloadString("$helperUri/$script"))
}

#--- Setting up Windows ---
#executeScript "RemoveDefaultApps.ps1";
#executeScript "HyperV.ps1";
#executeScript "SystemConfiguration.ps1";
#executeScript "FileExplorerSettings.ps1";
#executeScript "SystemUtilities.ps1";
executeScript "Browsers.ps1";
executeScript "MediaTools.ps1";
executeScript "ProductivityApps.ps1";
executeScript "CommunicationsApps.ps1";
executeScript "FunAndGames.ps1";
#executeScript "CommonDevTools.ps1";
executeScript "MoreDevTools.ps1";
#executeScript "WSL.ps1";
#executeScript "Docker.ps1";

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
