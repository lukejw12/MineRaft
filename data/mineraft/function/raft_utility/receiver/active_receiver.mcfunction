execute unless score @s receiver_id matches 0.. run scoreboard players set @s receiver_id 0

execute unless block ~ ~ ~ barrier run function mineraft:raft_utility/receiver/destroy_receiver
execute unless block ~ ~-1 ~ #raft_materials run function mineraft:raft_utility/receiver/destroy_receiver

scoreboard players operation #temp receiver_id = @s receiver_id
tag @e[type=item_display,tag=receiver_facade] remove this_receiver_facade
tag @e[type=interaction,tag=receiver_interact] remove this_receiver_interact
execute as @e[type=item_display,tag=receiver_facade] if score @s receiver_id = #temp receiver_id run tag @s add this_receiver_facade
execute as @e[type=interaction,tag=receiver_interact] if score @s receiver_id = #temp receiver_id run tag @s add this_receiver_interact

execute as @e[type=interaction,tag=this_receiver_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click
execute as @e[type=interaction,tag=this_receiver_interact] if data entity @s interaction run function mineraft:raft_utility/receiver/process_interaction
execute as @e[type=interaction,tag=this_receiver_interact] if data entity @s interaction run data remove entity @s interaction

tag @e[tag=this_receiver_facade] remove this_receiver_facade
tag @e[tag=this_receiver_interact] remove this_receiver_interact