
execute if score #has_item_type temp matches 0 run data modify entity @s data.ItemIds append value 0
execute if score #has_item_type temp matches 0 store result entity @s data.ItemIds[-1] int 1 run scoreboard players get #item_id_to_check temp

data modify entity @s data.Items append from entity @e[tag=processing_item,limit=1] Item

kill @e[tag=processing_item,limit=1]