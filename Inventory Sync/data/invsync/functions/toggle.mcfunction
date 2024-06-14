## Add or remove the invsync tag from @s depending if adding the tag was successful
function invsync:z_backend/grab_player_id
function invsync:z_backend/toggle_confirm with storage invsync:invsync_temp


# ## Display the correct chat message
# #on
# execute if score #bool conditional matches 1 run tellraw @s [{"text":"Inventory Sync: ","color":"white"},{"text":"Enabled","color":"green"}]
# #off
# execute if score #bool conditional matches 0 run tellraw @s [{"text":"Inventory Sync: ","color":"white"},{"text":"Disabled","color":"red"}]
# #sound
# playsound ui.button.click master @s ~ ~ ~ 0.1