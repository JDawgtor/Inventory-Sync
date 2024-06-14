# # $item replace entity @s weapon.offhand with $(Item) $(Count)
# $item replace entity @s armor.chest with $(Item) $(Count)
# # item modify entity @s armor.chest invsync:nbt
# # # $say $(Count) $(Item)s restoed in Slot $(Slot)/reload

# data remove storage invsync:invsync_item Item
# data remove storage invsync:invsync_item Slot
# data remove storage invsync:invsync_item Count
# # data remove storage invsync:invsync_item NBT

item replace entity @s armor.chest from entity @e[type=armor_stand,limit=1,sort=nearest,tag=item_transfer] weapon.mainhand

data remove storage invsync:invsync_item Slot


function invsync:z_backend/pull_item_data with storage invsync:invsync_temp