<# 
 .SYNOPSIS
 Script to move a selected mailbox from old JET Blue (ESE) to modern SQL Storage.

 .DESCRIPTION
 This script moves a user mailbox from legacy Exchange ESE storage to modern SQL Storage.

 The target SQL database is selected by Exchange automatically, as all SQL databases are fully managed by Exchange.

 .LINK
 More information: https://goo.gl/QiTtDo 

 .NOTES 
 Requirements 
 - Windows Server 2012 R2
 - Exchange Server 2016 Management Shell with preliminary SQL support

 .PARAMETER TopPublicFolder
 UPN of user mailbox

 .EXAMPLE
 Move-MailboxToModernStorage -SourceMailbox username@contoso.com

 #>

param(    
    [parameter(Mandatory=$true,ValueFromPipeline=$false,HelpMessage='UPN of user mailbox')]
    [string]$SourceMailbox
)

if($SourceMailbox -ne "") {
    Write-Output "Creating a new move request. If this cmdlet fails, your Exchange Server does not support modern SQL storage."

    try {
        New-MoveRequest -Identity $SourceMailbox -MoveToModernStorage
    }
    catch {
        Write-Output "New-MoveRequest failed!"
        Write-Output "See https://goo.gl/QiTtDo for more details!"
    }
}
else {
    Write-Output "You need to specify an user mailbox UPN to move a user mailbox to modern SQL storage."
    Write-Output "More information can be found here: https://goo.gl/QiTtDo"
}