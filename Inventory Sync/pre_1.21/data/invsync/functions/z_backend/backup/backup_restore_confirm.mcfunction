$execute if data storage invsync:backup_player$(Player) Backup run function invsync:z_backend/backup/restore_backup
$execute unless data storage invsync:backup_player$(Player) Backup run tellraw @s {"text":"Error: No backed up data to restore.","color":"red"}