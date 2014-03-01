How to: remove all existing user accounts

Using Apple Remote Desktop
Select a computer (or group) and choose the "Manage" menu and then "Send UNIX Command..."

The command to send:
./Users/acc/purge_users.pl randomu1

The username you pass will be IGNORED - every other user in the /Users/ directory will have their account removed.

For "Run command as:" choose "User" and enter "root" as the user name. Make sure you choose to "Display all output".