<#
 # Script to add user
#>

Param(
    [parameter(mandatory=$true,HelpMessage="First Name")]
    [ValidateLength(3,20)]
    [String]$FirstName,
    
    [parameter(mandatory=$true,HelpMessage="Last Name")]
    [ValidateLength(3,20)]
    [String]$LastName,

    [parameter(mandatory=$false,HelpMessage="Department")]
    [ValidateSet("Sales","Store","Management")]
    [String]$Department= "Store",

    [parameter(mandatory=$false)]
    $Memory

    )
   
    $FirstName,$LastName,$Department,($Memory/1024),$Memory

    #Write-Verbose "Name is $FirstName $Lastname and department is set to $Department and Memory is $Memory"