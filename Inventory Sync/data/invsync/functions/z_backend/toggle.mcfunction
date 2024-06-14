## Add or remove the invsync tag from @s depending if adding the tag was successful
execute store success score #bool conditional run tag @s add invsync
execute if score #bool conditional matches 0 run tag @s remove invsync

## Display the correct chat message
#on
execute if score #bool conditional matches 1 run tellraw @s [{"text":"Inventory Sync: ","color":"white"},{"text":"Enabled","color":"green"}]
#off
execute if score #bool conditional matches 0 run tellraw @s [{"text":"Inventory Sync: ","color":"white"},{"text":"Disabled","color":"red"}]
#sound
playsound ui.button.click master @s ~ ~ ~ 0.1