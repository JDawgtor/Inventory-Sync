#Store this player's invUID to data storage
execute store result storage invsync:invsync_temp Player int 1 run scoreboard players get @s invUID
#Store this player's gm to data storage
execute store result storage invsync:invsync_temp Gamemode int 1 run scoreboard players get @s gm