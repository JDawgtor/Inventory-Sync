##Pass in "invsync_temp" data into "pull_item_data" function
#grab first item in the array of items
function invsync:z_backend/pull_item_data with storage invsync:invsync_temp

##Using the grabbed item data, give player item with data applied,
function invsync:z_backend/restore/restore_item with storage invsync:invsync_item

##Check if any items still in array, if data still exists, run this function again.
$execute if data storage invsync:player$(Player) Inventories.Inventory$(Gamemode)[0] run function invsync:z_backend/item_replace_loop with storage invsync:invsync_temp