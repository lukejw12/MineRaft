data modify storage mineraft:temp id set from storage mineraft:temp item_data.id
execute store result storage mineraft:temp count int 1 run scoreboard players get #item_count temp

execute if data storage mineraft:temp {id:"minecraft:barrel"} run function mineraft:raft_extension/collection_net/give_barrel with storage mineraft:temp

execute unless data storage mineraft:temp {id:"minecraft:barrel"} run function mineraft:raft_extension/collection_net/give_item_by_id with storage mineraft:temp