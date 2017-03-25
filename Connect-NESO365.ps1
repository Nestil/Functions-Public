<#
  .Synopsis
    Logs you into Office 365
  
  .Description
    This simple script logs you into Office 365 and loads the msonline module

  .Notes
    Author: Ron Kjernell - ron@nestil.se    To run this you will also need the following:     Microsoft Online Services Sign-in Assistant for IT-Professionals RTW    http://go.microsoft.com/fwlink/?LinkID=286152     And: http://go.microsoft.com/fwlink/p/?linkid=236297         Read more aboute the MSOnline Module here: https://docs.microsoft.com/en-us/powershell/msonline/v1/azureactivedirectory?redirectedfrom=msdn  .LINK    http://www.nestil.se      https://github.com/Nestil/
#>

$O365CREDS = Get-Credential
$SESSION = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $O365CREDS -Authentication Basic -AllowRedirection #PS 5.0+
Import-PSSession $SESSION
Import-Module msonline
Connect-MsolService -Credential $O365CREDS