execute if entity @e[type=marker,tag=current_net,limit=1] if data entity @e[type=marker,tag=current_net,limit=1] data.Items[0] run function mineraft:raft_extension/collection_net/give_all_items

data modify entity @e[type=marker,tag=current_net,limit=1] data.Items set value []
data modify entity @e[type=marker,tag=current_net,limit=1] data.ItemCount set value 0