
execute store result score #current_item_id temp run data get entity @s data.Items[0].id
execute if score #current_item_id temp = #item_id_to_check temp run scoreboard players add #item_count temp 1

data modify entity @s data.TempItems set value []
data modify entity @s data.TempItems append from entity @s data.Items[0]
data remove entity @s data.Items[0]
data modify entity @s data.Items append from entity @s data.TempItems[]
data remove entity @s data.TempItems

scoreboard players add #current_index temp 1

execute if score #current_index temp < #item_types temp if data entity @s data.Items[0] run function mineraft:raft_extension/collection_net/active_net/check_item_at_index