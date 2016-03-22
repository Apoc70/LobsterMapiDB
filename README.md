# LobsterMAPIDB
The LobsterMAPIDB scripts are a set of PowerShell scripts to support migration from good ole Jet BLue ESE to SQL Server.

##Description
This script moves a user mailbox from legacy Exchange ESE storage to modern SQL Storage.

The target SQL database is selected by Exchange automatically, as all SQL databases are fully managed by Exchange.

Use 

##Requirements 
* Windows Server 2012 R2
* Exchange Server 2016 Management Shell with preliminary SQL support

##Examples

```
.\Move-MailboxToModernStorage.ps1 -SourceMailbox username@contoso.com
```

##Credits
Written by: Thomas Stensitzki

Find me online:

* My Blog: https://www.granikos.eu/en/justcantgetenough
* Archived Blog:	http://www.sf-tools.net/
* Twitter:	https://twitter.com/apoc70
* LinkedIn:	http://de.linkedin.com/in/thomasstensitzki
* Github:	https://github.com/Apoc70

For more Office 365, Cloud Security and Exchange Server stuff checkout services provided by Granikos

* Blog:     http://blog.granikos.eu/
* Website:	https://www.granikos.eu/en/
* Twitter:	https://twitter.com/granikos_de