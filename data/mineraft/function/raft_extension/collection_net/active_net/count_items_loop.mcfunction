execute store result score #current_count temp run data get storage mineraft:temp ItemsToCount[0].Count
scoreboard players operation #total_items temp += #current_count temp
data remove storage mineraft:temp ItemsToCount[0]
execute if data storage mineraft:temp ItemsToCount[0] run function mineraft:raft_extension/collection_net/active_net/count_items_loop