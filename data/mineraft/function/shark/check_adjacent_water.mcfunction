scoreboard players set #valid_water_found shark.detect 0

execute as @e[tag=shark_target,limit=1] at @s if block ~1 ~ ~ #minecraft:raft_replacable run scoreboard players set #valid_water_found shark.detect 1
execute as @e[tag=shark_target,limit=1] at @s if block ~-1 ~ ~ #minecraft:raft_replacable run scoreboard players set #valid_water_found shark.detect 1
execute as @e[tag=shark_target,limit=1] at @s if block ~ ~ ~1 #minecraft:raft_replacable run scoreboard players set #valid_water_found shark.detect 1
execute as @e[tag=shark_target,limit=1] at @s if block ~ ~ ~-1 #minecraft:raft_replacable run scoreboard players set #valid_water_found shark.detect 1