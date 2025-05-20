
execute store result score #item_id temp run data get entity @e[type=marker,tag=current_net,limit=1] data.Type1.id
execute store result score #item_count temp run data get entity @e[type=marker,tag=current_net,limit=1] data.Type1.count
data modify storage mineraft:temp item_data set from entity @e[type=marker,tag=current_net,limit=1] data.Type1.data

function mineraft:raft_extension/collection_net/give_items_macro