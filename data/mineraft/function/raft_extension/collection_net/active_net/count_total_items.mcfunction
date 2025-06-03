scoreboard players set #total_items temp 0
data modify storage mineraft:temp ItemsToCount set from entity @s data.Items
function mineraft:raft_extension/collection_net/active_net/count_items_loop