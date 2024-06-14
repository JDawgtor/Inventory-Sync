#Give item
# $item replace entity @s container.$(Slot) with $(Item) $(Count)

$item replace entity @s container.$(Slot) from entity @e[type=armor_stand,limit=1,sort=nearest,tag=item_transfer] weapon.mainhand

#Apply NBT
# $item modify entity @s container.$(Slot) invsync:data
# $say $(Count) $(Item)s restoed in Slot $(Slot)/reload

##Reset the item data, so it is empty for the next item.
# data remove storage invsync:invsync_item Item
data remove storage invsync:invsync_item Slot
# data remove storage invsync:invsync_item Count
# data remove storage invsync:invsync_item Data