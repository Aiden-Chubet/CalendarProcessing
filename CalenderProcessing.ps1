Set-ExecutionPolicy RemoteSigned -Force

Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser

Connect-ExchangeOnline -UserPrincipalName achubet@domain.org

Get-CalendarProcessing -Identity Company-233MainStreetBoardRoom715@domain.org | Format-List Identity,DeleteComments,DeleteSubject,AddOrganizerToSubject,RemovePrivateProperty,DeleteAttachments

Set-CalendarProcessing -Identity Company-233MainStreetBoardRoom715@domain.org -AddOrganizerToSubject $false -OrganizerInfo $true -DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false
