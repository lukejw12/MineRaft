# Get the count of the current item
execute store result score #current_count temp run data get storage mineraft:temp ItemsToCount[0].Count
# Add it to the total
scoreboard players operation #total_items temp += #current_count temp
# Remove the processed item
data remove storage mineraft:temp ItemsToCount[0]
# Continue if there are more items
execute if data storage mineraft:temp ItemsToCount[0] run function mineraft:raft_extension/collection_net/active_net/count_items_loop