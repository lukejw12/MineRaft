
data modify entity @s data.Type2.id set value 0
execute store result entity @s data.Type2.id int 1 run scoreboard players get #item_id temp
data modify entity @s data.Type2.data set from storage mineraft:temp Item
execute store result entity @s data.Type2.count int 1 run scoreboard players get #item_count temp
tag @s add type_added