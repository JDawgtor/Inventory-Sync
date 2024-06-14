$execute if entity @s[tag=invsync] if data storage invsync:player$(Player) Inventories run tellraw @s [{"text":"Warning: You may still have saved inventory data that will be lost if you proceed.\n"},{"text":"[Disable anyway]","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable."}]},"clickEvent":{"action":"run_command","value":"/function invsync:z_backend/toggle"}},{"text":" "},{"text":"[Create backup]","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to creat a restorable backup."}]},"clickEvent":{"action":"run_command","value":"/function invsync:backup"}}]

execute if entity @s[tag=!invsync] run function invsync:z_backend/toggle