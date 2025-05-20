
execute store result score #current_item_id temp run data get storage mineraft:temp Items[0].id
execute if score #current_item_id temp = #item_id_to_check temp run scoreboard players add #item_count temp 1

data remove storage mineraft:temp Items[0]

execute if data storage mineraft:temp Items[0] run function mineraft:raft_extension/collection_net/active_net/count_loop