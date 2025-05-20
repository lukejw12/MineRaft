
execute store result score #item_types temp if data entity @s data.ItemIds[]

scoreboard players set #has_item_type temp 0
execute store result score #item_id_to_check temp run data get entity @e[tag=processing_item,limit=1] Item.id
execute if data entity @s data.ItemIds[] run function mineraft:raft_extension/collection_net/active_net/check_item_type

execute if score #has_item_type temp matches 1 run function mineraft:raft_extension/collection_net/active_net/check_item_capacity

execute if score #has_item_type temp matches 0 if score #item_types temp matches ..2 run scoreboard players set #can_add temp 1

execute if score #can_add temp matches 1 run function mineraft:raft_extension/collection_net/active_net/store_item

execute if score #has_this_type temp matches 1..3 if score #this_type_count temp matches 10 run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~1 ~ 0.3 0.3 0.3 0 5

execute if score #distinct_types temp matches 3 if score #has_this_type temp matches 0 run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~1 ~ 0.3 0.3 0.3 0 10