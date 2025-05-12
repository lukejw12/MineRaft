
execute if score #total net_amount matches 0..5 at @e[type=marker,tag=central_raft] positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 13 under -62 false @e[type=marker,tag=resource_spawn]
execute if score #total net_amount matches 6..10 at @e[type=marker,tag=central_raft] positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 33 under -62 false @e[type=marker,tag=resource_spawn]
execute if score #total net_amount matches 11..15 at @e[type=marker,tag=central_raft] positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 43 under -62 false @e[type=marker,tag=resource_spawn]
execute if score #total net_amount matches 16.. at @e[type=marker,tag=central_raft] positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 63 under -62 false @e[type=marker,tag=resource_spawn]

execute as @e[type=marker,tag=resource_spawn] at @s if entity @e[type=marker,tag=central_raft,distance=..6] at @e[type=marker,tag=central_raft] positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 13 under -62 false @s
execute as @e[type=marker,tag=resource_spawn] at @s unless block ~ 62 ~ water at @e[type=marker,tag=central_raft] positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 30 under -62 false @s

execute as @e[type=marker,tag=resource_spawn] at @s if block ~ 62 ~ water run loot spawn ~ 62.5 ~ loot mineraft:average_resource

kill @e[type=marker,tag=resource_spawn]