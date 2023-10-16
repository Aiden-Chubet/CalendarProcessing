Set-ExecutionPolicy RemoteSigned -Force

Install-Module -Name ExchangeOnlineManagement -Scope CurrentUser

Connect-ExchangeOnline -UserPrincipalName achubet@cmhacc.org

Get-CalendarProcessing -Identity CMHA-233MainStreetBoardRoom715@cmhacc.org | Format-List Identity,DeleteComments,DeleteSubject,AddOrganizerToSubject,RemovePrivateProperty,DeleteAttachments

Set-CalendarProcessing -Identity CMHA-233MainStreetBoardRoom715@cmhacc.org -AddOrganizerToSubject $false -OrganizerInfo $true -DeleteComments $false -DeleteSubject $false -RemovePrivateProperty $false