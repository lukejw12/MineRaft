scoreboard players operation #add_count temp = #item_count temp
execute if score #add_count temp > #space_left temp run scoreboard players operation #add_count temp = #space_left temp

data modify entity @s data.Items append from entity @e[tag=processing_item,limit=1] Item
execute store result entity @s data.Items[-1].count int 1 run scoreboard players get #add_count temp
scoreboard players operation #new_total temp = #current_count temp
scoreboard players operation #new_total temp += #add_count temp
execute store result entity @s data.ItemCount int 1 run scoreboard players get #new_total temp

execute if score #add_count temp < #item_count temp run function mineraft:raft_extension/collection_net/active_net/spawn_excess

kill @e[tag=processing_item,limit=1]