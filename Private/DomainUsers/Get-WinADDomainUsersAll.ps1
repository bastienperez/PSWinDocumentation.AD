﻿function Get-WinADDomainUsersAll {
    param(
        [Array] $DomainUsers
    )

    $DomainUsers | Where-Object { $_.PasswordNotRequired -eq $False }
    #| Select-Object * #Name, SamAccountName, UserPrincipalName, Enabled

}