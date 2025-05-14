# data/mineraft/functions/trophy_board/process_interaction.mcfunction

# Process right-click interactions (adding trophies)
execute if data entity @s interaction run tag @s add has_interaction

# Check for prismarine shard for shark trophy
execute as @s[tag=has_interaction] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:prismarine_shard"}}] run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add shark_trophy_click

# Process shark trophy interaction
execute as @s[tag=shark_trophy_click] at @s unless score @e[tag=trophy_board_active,distance=..1.5,limit=1,sort=nearest] trophy_has_shark matches 1 run function mineraft:raft_decor/trophy_board/add_shark_trophy

# Clear interaction data after processing
execute if data entity @s interaction run data remove entity @s interaction
tag @s remove has_interaction
tag @s remove shark_trophy_click

# Process left-click/attack (breaking the board)
execute if data entity @s attack run tag @s add being_attacked
execute if entity @s[tag=being_attacked] at @s as @e[tag=trophy_board_active,distance=..1.5,limit=1,sort=nearest] run function mineraft:raft_decor/trophy_board/break_trophy_board
execute if data entity @s attack run data remove entity @s attack
tag @s remove being_attacked