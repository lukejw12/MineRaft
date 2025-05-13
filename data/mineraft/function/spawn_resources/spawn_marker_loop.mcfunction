
execute if score #count temp < #target temp run scoreboard players add #count temp 1
execute if score #count temp <= #target temp at @e[tag=central_raft,limit=1] run summon marker ~ ~ ~ {Tags:["resource_spawn"]}
execute if score #count temp < #target temp run function mineraft:spawn_resources/spawn_marker_loop

execute if score #count temp >= #target temp as @e[type=marker,tag=resource_spawn] at @e[type=marker,tag=central_raft] if score #total net_amount matches 0..5 positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 13 under -62 false @s
execute if score #count temp >= #target temp as @e[type=marker,tag=resource_spawn] at @e[type=marker,tag=central_raft] if score #total net_amount matches 6..10 positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 33 under -62 false @s
execute if score #count temp >= #target temp as @e[type=marker,tag=resource_spawn] at @e[type=marker,tag=central_raft] if score #total net_amount matches 11..15 positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 43 under -62 false @s
execute if score #count temp >= #target temp as @e[type=marker,tag=resource_spawn] at @e[type=marker,tag=central_raft] if score #total net_amount matches 16.. positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 63 under -62 false @s




execute if score #count temp >= #target temp as @e[type=marker,tag=resource_spawn] at @s if entity @e[type=marker,tag=central_raft,distance=..6] at @e[type=marker,tag=central_raft] positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 13 under -62 false @s
execute if score #count temp >= #target temp as @e[type=marker,tag=resource_spawn] at @s unless block ~ 62 ~ water at @e[type=marker,tag=central_raft] positioned ~ ~ ~-20 run spreadplayers ~ ~ 5 30 under -62 false @s
execute if score #count temp >= #target temp as @e[type=marker,tag=resource_spawn] at @s if block ~ 62 ~ water run loot spawn ~ 62.5 ~ loot mineraft:average_resource
execute if score #count temp >= #target temp as @e[type=marker,tag=resource_spawn] at @s run kill @s