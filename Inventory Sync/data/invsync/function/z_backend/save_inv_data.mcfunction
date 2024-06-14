##This will create a new storage named player(invUID) (e.g player1), then depending on which gamemode, save Inventory data to a new custom tag of Inventory(gamemode) (e.g Inventory1 = Gamemode 1)

#Save Survival Mode
$execute if score @s prev_gm matches 0 run data modify storage invsync:player$(Player) Inventories.Inventory0 set from entity @s Inventory
#Save Creative Mode
$execute if score @s prev_gm matches 1 run data modify storage invsync:player$(Player) Inventories.Inventory1 set from entity @s Inventory
#Save Adventure Mode
$execute if score @s prev_gm matches 2 run data modify storage invsync:player$(Player) Inventories.Inventory2 set from entity @s Inventory
#Save Spectator Mode
$execute if score @s prev_gm matches 3 run data modify storage invsync:player$(Player) Inventories.Inventory3 set from entity @s Inventory