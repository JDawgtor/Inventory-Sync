##This will add all the necessary data for the first item in the array of the player's inventory list from the correct gamemode
$data modify storage invsync:invsync_item Slot set from storage invsync:player$(Player) Inventories.Inventory$(Gamemode)[0].Slot
# $data modify storage invsync:invsync_item Item set from storage invsync:player$(Player) Inventories.Inventory$(Gamemode)[0].id
# $data modify storage invsync:invsync_item Count set from storage invsync:player$(Player) Inventories.Inventory$(Gamemode)[0].count
# $data modify storage invsync:invsync_item Data set from storage invsync:player$(Player) Inventories.Inventory$(Gamemode)[0].components

$data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=item_transfer] HandItems[0] set from storage invsync:player$(Player) Inventories.Inventory$(Gamemode)[0]

#remove first object in array so that the next object gets called when this function is called again
$data remove storage invsync:player$(Player) Inventories.Inventory$(Gamemode)[0]



##If the current item data has a special slot number, run specific restore commands.
#check offhand
execute if data storage invsync:invsync_item {Slot:-106b} run function invsync:z_backend/restore/restore_offhand with storage invsync:invsync_item
#check feet
execute if data storage invsync:invsync_item {Slot:100b} run function invsync:z_backend/restore/restore_feet with storage invsync:invsync_item
#check legs
execute if data storage invsync:invsync_item {Slot:101b} run function invsync:z_backend/restore/restore_legs with storage invsync:invsync_item
#check chest
execute if data storage invsync:invsync_item {Slot:102b} run function invsync:z_backend/restore/restore_chest with storage invsync:invsync_item
#check head
execute if data storage invsync:invsync_item {Slot:103b} run function invsync:z_backend/restore/restore_head with storage invsync:invsync_item