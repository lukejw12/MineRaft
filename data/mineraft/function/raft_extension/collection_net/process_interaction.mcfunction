execute as @s[type=minecraft:interaction] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click
execute as @s[type=minecraft:interaction] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:vex_spawn_egg[minecraft:custom_data={foundation_item:1b}] run function mineraft:raft_extension/collection_net/apply_foundation
scoreboard players operation #current_net temp = @s net_id

execute as @e[type=marker,tag=active_net] if score @s net_id = #current_net temp run tag @s add current_net

execute if data entity @s interaction run function mineraft:raft_extension/collection_net/handle_player_interaction
data remove entity @s interaction