function invsync:z_backend/grab_player_id
function invsync:z_backend/apply_backup_to_inventory with storage invsync:invsync_temp


##Restore a previous gamemode's inventory
#Clear this player's inventory
clear @s
#Start replacing items
function invsync:z_backend/item_replace_loop with storage invsync:invsync_temp
#Stop the armor equip sound spam
function invsync:z_backend/stop_equip_sound

tellraw @s [{"selector":"@s"},{"text":"'s inventories successfully restored from backup.","color":"white"}]
#sound
playsound ui.button.click master @s ~ ~ ~ 0.1