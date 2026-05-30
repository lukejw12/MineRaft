execute unless data entity @s data.placed_item run return 0
summon item ~ ~1 ~ {PickupDelay:0,Tags:["mr.return_item"]}
data modify entity @e[type=item,tag=mr.return_item,limit=1] Item set from entity @s data.placed_item
tag @e[type=item,tag=mr.return_item] remove mr.return_item
