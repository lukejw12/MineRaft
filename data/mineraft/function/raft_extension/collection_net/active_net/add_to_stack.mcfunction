
data modify entity @s data.Items append from entity @e[tag=processing_item,limit=1] Item

scoreboard players set #can_add temp 1

kill @e[tag=processing_item,limit=1]