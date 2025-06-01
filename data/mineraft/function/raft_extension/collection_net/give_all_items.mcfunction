data modify storage mineraft:temp current_item set from entity @e[type=marker,tag=current_net,limit=1] data.Items[0]
execute store result score #item_count temp run data get storage mineraft:temp current_item.count
data modify storage mineraft:temp item_data set from storage mineraft:temp current_item

function mineraft:raft_extension/collection_net/give_items_macro

data remove entity @e[type=marker,tag=current_net,limit=1] data.Items[0]
execute if data entity @e[type=marker,tag=current_net,limit=1] data.Items[0] run function mineraft:raft_extension/collection_net/give_all_items