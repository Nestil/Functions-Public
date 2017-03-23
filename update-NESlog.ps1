<#
.Synopsis
    Script used to update eventlog
.DESCRIPTION
    Created: 2017-03-23
    Version: 1.0
    Author : Mikael Wijk
    Blog   : http://deploymentbunny.com
    Disclaimer: This script is provided "AS IS" with no warranties.
.EXAMPLE
    
#>

Function Update-NESlog
{
    Param(
        $Logname,
        $Entrytype,
        $EventID,
        $Message     
    
    )

    New-EventLog -LogName Application -Source $Logname -ErrorAction SilentlyContinue
    Write-EventLog -LogName Application -Source $Logname -EntryType $Entrytype -EventId $EventID -Message $Message
}
