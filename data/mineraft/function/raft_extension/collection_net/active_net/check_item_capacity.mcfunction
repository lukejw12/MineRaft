
scoreboard players set #can_add temp 0
scoreboard players set #item_id_to_check temp 0

execute store result score #item_id_to_check temp run data get entity @e[tag=processing_item,limit=1] Item.id

scoreboard players set #item_count temp 0
execute if data entity @s data.Items[] run function mineraft:raft_extension/collection_net/active_net/count_items

execute if score #item_count temp matches ..9 run scoreboard players set #can_add temp 1