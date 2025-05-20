execute store result score #target_id temp run data get entity @e[tag=processing_item,limit=1] Item.id

scoreboard players set #distinct_types temp 0
scoreboard players set #has_this_type temp 0
scoreboard players set #this_type_count temp 0

execute if data entity @s data.Type1.id store result score #type_id temp run data get entity @s data.Type1.id
execute if data entity @s data.Type1.id run scoreboard players add #distinct_types temp 1
execute if data entity @s data.Type1.id if score #type_id temp = #target_id temp run scoreboard players set #has_this_type temp 1
execute if data entity @s data.Type1.id if score #type_id temp = #target_id temp store result score #this_type_count temp run data get entity @s data.Type1.count

execute if data entity @s data.Type2.id store result score #type_id temp run data get entity @s data.Type2.id
execute if data entity @s data.Type2.id run scoreboard players add #distinct_types temp 1
execute if data entity @s data.Type2.id if score #type_id temp = #target_id temp run scoreboard players set #has_this_type temp 2
execute if data entity @s data.Type2.id if score #type_id temp = #target_id temp store result score #this_type_count temp run data get entity @s data.Type2.count

execute if data entity @s data.Type3.id store result score #type_id temp run data get entity @s data.Type3.id
execute if data entity @s data.Type3.id run scoreboard players add #distinct_types temp 1
execute if data entity @s data.Type3.id if score #type_id temp = #target_id temp run scoreboard players set #has_this_type temp 3
execute if data entity @s data.Type3.id if score #type_id temp = #target_id temp store result score #this_type_count temp run data get entity @s data.Type3.count

execute if score #has_this_type temp matches 1..3 if score #this_type_count temp matches ..9 run function mineraft:raft_extension/collection_net/active_net/add_to_existing

execute if score #has_this_type temp matches 0 if score #distinct_types temp matches ..2 run function mineraft:raft_extension/collection_net/active_net/add_as_new