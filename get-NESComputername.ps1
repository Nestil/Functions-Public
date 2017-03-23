<#
.Synopsis
    Script used to get computername
.DESCRIPTION
    Created: 2017-03-23
    Version: 1.0
    Author : Mikael Wijk
    Disclaimer: This script is provided "AS IS" with no warranties.
.EXAMPLE
    
#>
function Get-Computername { 

 param($Computername) 

 Get-WMIObject Win32_ComputerSystem | Select-Object -ExpandProperty name

 } 

 Get-Computername