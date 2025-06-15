execute store result score #current_count temp run data get entity @s data.ItemCount

execute store result score #item_count temp run data get entity @e[tag=processing_item,limit=1] Item.count

scoreboard players set #max_items temp 15
scoreboard players operation #space_left temp = #max_items temp
scoreboard players operation #space_left temp -= #current_count temp

execute if score #space_left temp matches 1.. run function mineraft:raft_extension/collection_net/active_net/add_items
execute if score #space_left temp matches ..0 as @s at @s run tag @s add net_full
execute if score #space_left temp matches ..0 as @s at @s run schedule function mineraft:raft_extension/collection_net/active_net/particle 18t append
