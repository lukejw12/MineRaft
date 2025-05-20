
data modify storage mineraft:temp Item set from entity @e[tag=processing_item,limit=1] Item
execute store result score #item_count temp run data get entity @e[tag=processing_item,limit=1] Item.count
execute store result score #item_id temp run data get entity @e[tag=processing_item,limit=1] Item.id
execute if score #item_count temp matches 11.. run scoreboard players set #item_count temp 10
execute unless data entity @s data.Type1.id run function mineraft:raft_extension/collection_net/active_net/set_type1
execute unless data entity @s data.Type2.id unless entity @s[tag=type_added] run function mineraft:raft_extension/collection_net/active_net/set_type2
execute unless data entity @s data.Type3.id unless entity @s[tag=type_added] run function mineraft:raft_extension/collection_net/active_net/set_type3
kill @e[tag=processing_item,limit=1]
tag @s remove type_added