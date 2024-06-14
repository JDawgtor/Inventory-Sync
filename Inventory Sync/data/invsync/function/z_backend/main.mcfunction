# Check if all players have a value on the invUID score. If not, run the function to give them one.
execute as @a unless score @s invUID matches 1.. run function invsync:z_backend/assign_uid
#Check for all player gamemode updates
execute as @a at @s run function invsync:z_backend/check_if_gamemode_changed