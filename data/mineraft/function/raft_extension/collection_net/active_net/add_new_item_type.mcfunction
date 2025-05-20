
execute store result score #item_id temp run data get entity @e[tag=processing_item,limit=1] Item.id
data modify entity @s data.ItemIds append value 0
execute store result entity @s data.ItemIds[-1] int 1 run scoreboard players get #item_id temp
data modify entity @s data.Items append from entity @e[tag=processing_item,limit=1] Item
scoreboard players set #can_add temp 1
kill @e[tag=processing_item,limit=1]