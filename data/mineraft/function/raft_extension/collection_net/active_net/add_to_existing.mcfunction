
data modify storage mineraft:temp Item set from entity @e[tag=processing_item,limit=1] Item
execute store result score #item_count temp run data get entity @e[tag=processing_item,limit=1] Item.count
execute if score #has_this_type temp matches 1 run function mineraft:raft_extension/collection_net/active_net/update_type1
execute if score #has_this_type temp matches 2 run function mineraft:raft_extension/collection_net/active_net/update_type2
execute if score #has_this_type temp matches 3 run function mineraft:raft_extension/collection_net/active_net/update_type3

kill @e[tag=processing_item,limit=1]