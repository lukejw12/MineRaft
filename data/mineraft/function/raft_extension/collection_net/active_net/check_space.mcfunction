# Modified check_space.mcfunction with max of 15 items
# Get current item count in net
execute store result score #current_count temp run data get entity @s data.ItemCount

# Get count of incoming item
execute store result score #item_count temp run data get entity @e[tag=processing_item,limit=1] Item.count

# Calculate available space
scoreboard players set #max_items temp 15
scoreboard players operation #space_left temp = #max_items temp
scoreboard players operation #space_left temp -= #current_count temp

# Process item if there's space
execute if score #space_left temp matches 1.. run function mineraft:raft_extension/collection_net/active_net/add_items

execute if score #space_left temp matches ..0 as @s at @s run particle heart ~ ~2 ~ 0 0 0 0.01 0 force
