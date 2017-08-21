#
# gdrive.ps1
#

$folder = @{"Downloads" = "0B55m6xDZy7hMRklTMmRWT2FtVkE";
			"Manuals" = "0B55m6xDZy7hMUWpvQkJIRnJiMFU";
			"OneDrive" = "0B55m6xDZy7hMamxvalV2WDJmZkk";
			"Pictures" = "0B55m6xDZy7hMdU1nWjQ1Z2pRRFk";
			"Projects" = "0B55m6xDZy7hMTzhJLVZrdHE0bE0";
			"Playlists" = "0B55m6xDZy7hMXzJzdXAzRWdJWjQ";
			"Videos" = "0B55m6xDZy7hMWWNoZ1lOaldjNzQ"}

$folder.Keys | % {C:\WINDOWS\system32\cmd.exe /C ("C:\Users\sn0wflake\OneDrive\gdrive-windows-x64.exe sync upload --keep-local --delete-extraneous C:\Users\sn0wflake\OneDrive\$_ "+$folder.Item($_))}