## Update current gamemode, compare to previous tick's gamemode, and run save inventory if changed.
#1 & 4. store current gamemode on "gm" score
execute store result score @s gm run data get entity @s playerGameType
#2. check if "prev_gm" and "gm" are the same, and if they have changed and have invsync enabled, update inventory
execute unless score @s[tag=invsync] prev_gm = @s[tag=invsync] gm run function invsync:z_backend/save_and_update_inventory
#3. make "prev_gm" and "gm" the same number
scoreboard players operation @s prev_gm = @s gm