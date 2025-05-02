# Updated check_adjacent_water.mcfunction
scoreboard players set #valid_water_found shark.detect 0

# Check all four directions around the target
execute as @e[tag=shark_target,limit=1] at @s if block ~1 ~ ~ #minecraft:raft_replacable run scoreboard players set #valid_water_found shark.detect 1
execute as @e[tag=shark_target,limit=1] at @s if block ~-1 ~ ~ #minecraft:raft_replacable run scoreboard players set #valid_water_found shark.detect 1
execute as @e[tag=shark_target,limit=1] at @s if block ~ ~ ~1 #minecraft:raft_replacable run scoreboard players set #valid_water_found shark.detect 1
execute as @e[tag=shark_target,limit=1] at @s if block ~ ~ ~-1 #minecraft:raft_replacable run scoreboard players set #valid_water_found shark.detect 1

# Return the result through the scoreboard
# We'll handle the fallback in the target_raft function