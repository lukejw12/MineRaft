# data/mineraft/function/raft_extension/collection_net/give_items_from_storage.mcfunction

# Use execute store to loop through all items in the storage
execute store result score #items_to_give temp run data get storage mineraft:collection_net Items

# Use a separate function to give each item
execute if score #items_to_give temp matches 1.. run function mineraft:raft_extension/collection_net/give_single_item