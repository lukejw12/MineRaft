
scoreboard players operation #excess_count temp = #item_count temp
scoreboard players operation #excess_count temp -= #add_count temp

summon item ~ ~ ~ {Tags:["excess_item"],Motion:[0.0,0.1,0.0],PickupDelay:10}
data modify entity @e[tag=excess_item,limit=1] Item set from entity @e[tag=processing_item,limit=1] Item
execute store result entity @e[tag=excess_item,limit=1] Item.count int 1 run scoreboard players get #excess_count temp
tag @e[tag=excess_item] remove excess_item