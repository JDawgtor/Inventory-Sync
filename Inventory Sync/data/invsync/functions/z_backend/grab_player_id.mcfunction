#Store this player's UID to data storage
execute store result storage invsync:invsync_temp Player int 1 run scoreboard players get @s UID
#Store this player's gm to data storage
execute store result storage invsync:invsync_temp Gamemode int 1 run scoreboard players get @s gm