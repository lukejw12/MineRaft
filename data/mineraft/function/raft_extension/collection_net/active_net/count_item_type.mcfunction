# data/mineraft/function/raft_extension/collection_net/active_net/count_item_type.mcfunction

# Loop through items and count the matching type
scoreboard players set #current_index temp 0
execute if data entity @s data.Items[0] run function mineraft:raft_extension/collection_net/active_net/check_item_at_index