
execute as @p at @s run function mineraft:raft_extension/collection_net/give_items_from_storage


data remove storage mineraft:collection_net Items
scoreboard players set @s item_count 0