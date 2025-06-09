execute unless score @s foundation_count matches 0.. run scoreboard players set @s foundation_count 0
execute unless score @s counter_id matches 0.. run scoreboard players set @s counter_id 0

execute unless block ~ ~ ~ barrier run function mineraft:raft_utility/foundation_counter/destroy_counter

execute if entity @s[tag=facing_south] if block ~ ~ ~-1 #minecraft:raycast_blocks run function mineraft:raft_utility/foundation_counter/destroy_counter
execute if entity @s[tag=facing_west] if block ~1 ~ ~ #minecraft:raycast_blocks run function mineraft:raft_utility/foundation_counter/destroy_counter
execute if entity @s[tag=facing_north] if block ~ ~ ~1 #minecraft:raycast_blocks run function mineraft:raft_utility/foundation_counter/destroy_counter
execute if entity @s[tag=facing_east] if block ~-1 ~ ~ #minecraft:raycast_blocks run function mineraft:raft_utility/foundation_counter/destroy_counter

scoreboard players operation #temp counter_id = @s counter_id
tag @e[type=item_display,tag=counter_facade] remove this_counter_facade
tag @e[type=interaction,tag=counter_interact] remove this_counter_interact
execute as @e[type=item_display,tag=counter_facade] if score @s counter_id = #temp counter_id run tag @s add this_counter_facade
execute as @e[type=interaction,tag=counter_interact] if score @s counter_id = #temp counter_id run tag @s add this_counter_interact

execute as @e[type=interaction,tag=this_counter_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click
execute as @e[type=interaction,tag=this_counter_interact] if data entity @s interaction run function mineraft:raft_utility/foundation_counter/process_interaction
execute as @e[type=interaction,tag=this_counter_interact] if data entity @s interaction run data remove entity @s interaction

tag @e[tag=this_counter_facade] remove this_counter_facade
tag @e[tag=this_counter_interact] remove this_counter_interact
