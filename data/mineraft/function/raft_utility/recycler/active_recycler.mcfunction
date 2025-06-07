execute unless score @s recycler_value matches 0.. run scoreboard players set @s recycler_value 0
execute unless score @s recycler_timer matches 0.. run scoreboard players set @s recycler_timer 0
execute unless score @s battery_uses matches 0.. run scoreboard players set @s battery_uses 0
execute unless score @s has_battery matches 0.. run scoreboard players set @s has_battery 0
execute unless score @s recycler_state matches 0.. run scoreboard players set @s recycler_state 0

execute unless block ~ ~ ~ barrier run function mineraft:raft_utility/recycler/destroy_recycler
execute unless block ~ ~-1 ~ #raft_materials run function mineraft:raft_utility/recycler/destroy_recycler

scoreboard players operation #temp recycler_id = @s recycler_id
tag @e[type=item_display,tag=recycler_facade] remove this_recycler_facade
tag @e[type=interaction,tag=recycler_interact] remove this_recycler_interact
execute as @e[type=item_display,tag=recycler_facade] if score @s recycler_id = #temp recycler_id run tag @s add this_recycler_facade
execute as @e[type=interaction,tag=recycler_interact] if score @s recycler_id = #temp recycler_id run tag @s add this_recycler_interact

execute as @e[type=interaction,tag=this_recycler_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click
execute as @e[type=interaction,tag=this_recycler_interact] if data entity @s interaction run function mineraft:raft_utility/recycler/process_item
execute as @e[type=interaction,tag=this_recycler_interact] if data entity @s interaction run data remove entity @s interaction
execute if score @s recycler_state matches 1 run scoreboard players add @s recycler_timer 1

execute if score @s recycler_state matches 1 if score @s recycler_timer matches 200.. run scoreboard players remove @s battery_uses 1
execute if score @s recycler_state matches 1 if score @s recycler_timer matches 200.. run scoreboard players set @s recycler_timer 0
execute if score @s recycler_state matches 1 if score @s recycler_timer matches 0 run scoreboard players set @s recycler_state 2

execute if score @s battery_uses matches ..0 run scoreboard players set @s has_battery 0
tag @e[tag=this_recycler_facade] remove this_recycler_facade
tag @e[tag=this_recycler_interact] remove this_recycler_interact
