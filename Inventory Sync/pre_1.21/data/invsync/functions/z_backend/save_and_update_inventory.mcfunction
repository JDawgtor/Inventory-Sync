## Save this player's information on a "invsync_temp" data storage for later use.
function invsync:z_backend/grab_player_id

##Save current inventory to storage
#Pass invsync_temp data into the save inventory function
function invsync:z_backend/save_inv_data with storage invsync:invsync_temp

##Restore a previous gamemode's inventory
#Clear this player's inventory
clear @s
#Summon a temporary armorstand to hold the items before giving to the player.
summon armor_stand ~ ~ ~ {Tags:["item_transfer"],Invisible:1,NoGravity:1}
#Start replacing items
function invsync:z_backend/item_replace_loop with storage invsync:invsync_temp
#Kill armorstand
kill @e[type=armor_stand,tag=item_transfer]
#Stop the armor equip sound spam
function invsync:z_backend/restore/stop_equip_sound

#Give actionbar message
title @s actionbar {"text":"Inventory updated!"}