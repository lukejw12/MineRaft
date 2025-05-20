
execute store result score #current_id temp run data get entity @s data.ItemIds[0]
execute if score #current_id temp = #item_id_to_check temp run scoreboard players set #has_item_type temp 1

execute if score #has_item_type temp matches 0 if data entity @s data.ItemIds[1] store result score #current_id temp run data get entity @s data.ItemIds[1]
execute if score #has_item_type temp matches 0 if score #current_id temp = #item_id_to_check temp run scoreboard players set #has_item_type temp 1

execute if score #has_item_type temp matches 0 if data entity @s data.ItemIds[2] store result score #current_id temp run data get entity @s data.ItemIds[2]
execute if score #has_item_type temp matches 0 if score #current_id temp = #item_id_to_check temp run scoreboard players set #has_item_type temp 1