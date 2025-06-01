# Initialize counter
scoreboard players set #total_items temp 0
# Store the items array to temp storage for easier processing
data modify storage mineraft:temp ItemsToCount set from entity @s data.Items
# Call the counting function
function mineraft:raft_extension/collection_net/active_net/count_items_loop