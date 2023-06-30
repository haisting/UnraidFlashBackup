# UnraidFlashBackup

This .bat file will create a new folder with folder name of choice and date in a desired location, copy contents of flash drive, zip it, and delete the created folder leaving only a zip.

Requirements:
.7zip

## Setup:

Set Flash in Unraid to Export = Yes & user access = Read-only

Modify lines:

Line 4, set it to your servers flash
Line 7, set the destination folder you created
Line 17, set whatever name you want before the date

Optional but recommended:
Create a new task in Task Scheduler to repeat this action at your desired frequency.

Automate Backups of Unraid Flash Drive
