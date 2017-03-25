﻿<#
  .Synopsis
    Logs you into Office 365
  
  .Description
    This simple script logs you into Office 365 and loads the msonline module

  .Notes
    Author: Ron Kjernell - ron@nestil.se
#>

$O365CREDS = Get-Credential
$SESSION = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $O365CREDS -Authentication Basic -AllowRedirection #PS 5.0+
Import-PSSession $SESSION
Import-Module msonline
Connect-MsolService -Credential $O365CREDS