#gm = gamemode
scoreboard objectives add conditional dummy
scoreboard objectives add gm dummy
scoreboard objectives add prev_gm dummy
scoreboard objectives add invUID dummy

scoreboard objectives add hide_msg dummy
execute unless score .invsync hide_msg matches 1.. run tellraw @a [{"text":"Inventory Sync loaded!"},{"text":"\n    [Hide reload message]","color":"gray","clickEvent": { "action": "run_command","value": "/scoreboard players set .invsync hide_msg 1"}}]