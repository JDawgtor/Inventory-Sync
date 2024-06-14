function invsync:z_backend/grab_player_id
function invsync:z_backend/save_inv_data with storage invsync:invsync_temp
function invsync:z_backend/backup with storage invsync:invsync_temp

tellraw @s [{"selector":"@s"},{"text":"'s inventories successfully backed up.","color":"white"}]
#sound
playsound ui.button.click master @s ~ ~ ~ 0.1