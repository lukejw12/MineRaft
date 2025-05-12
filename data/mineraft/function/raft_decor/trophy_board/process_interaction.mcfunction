
execute if data entity @s interaction run tag @s add has_interaction

execute as @s[tag=has_interaction] at @s on target if items entity @s weapon.mainhand prismarine_shard run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add shark_trophy_click

execute as @s[tag=shark_trophy_click] at @s as @e[tag=trophy_board_active,distance=..1.5,limit=1,sort=nearest] unless score @s trophy_has_shark matches 1 run function mineraft:raft_decor/trophy_board/add_shark_trophy

execute if data entity @s interaction run data remove entity @s interaction
tag @s remove has_interaction
tag @s remove shark_trophy_click