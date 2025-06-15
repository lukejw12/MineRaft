
scoreboard players add #raft_target_attempts shark.detect 1

execute if score #raft_target_attempts shark.detect > #max_raft_target_attempts shark.detect run return 0

execute store result score #direction shark.detect run random value 0..7

execute at @e[tag=valid_shark_chomp,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["temp_shark_target"]}

execute if score #direction shark.detect matches 0 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~ ~ ~-1
execute if score #direction shark.detect matches 1 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~1 ~ ~-1
execute if score #direction shark.detect matches 2 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~1 ~ ~
execute if score #direction shark.detect matches 3 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~1 ~ ~1
execute if score #direction shark.detect matches 4 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~ ~ ~1
execute if score #direction shark.detect matches 5 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~-1 ~ ~1
execute if score #direction shark.detect matches 6 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~-1 ~ ~
execute if score #direction shark.detect matches 7 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~-1 ~ ~-1

scoreboard players set #found_valid shark.detect 0
scoreboard players set #water_dir shark.detect -1

execute as @e[tag=temp_shark_target,limit=1] at @s if block ~1 ~ ~ #minecraft:raft_replacable run scoreboard players set #found_valid shark.detect 1
execute as @e[tag=temp_shark_target,limit=1] at @s if block ~1 ~ ~ #minecraft:raft_replacable run scoreboard players set #water_dir shark.detect 0

execute as @e[tag=temp_shark_target,limit=1] at @s if block ~-1 ~ ~ #minecraft:raft_replacable run scoreboard players set #found_valid shark.detect 1
execute as @e[tag=temp_shark_target,limit=1] at @s if block ~-1 ~ ~ #minecraft:raft_replacable run scoreboard players set #water_dir shark.detect 1

execute as @e[tag=temp_shark_target,limit=1] at @s if block ~ ~ ~1 #minecraft:raft_replacable run scoreboard players set #found_valid shark.detect 1
execute as @e[tag=temp_shark_target,limit=1] at @s if block ~ ~ ~1 #minecraft:raft_replacable run scoreboard players set #water_dir shark.detect 2

execute as @e[tag=temp_shark_target,limit=1] at @s if block ~ ~ ~-1 #minecraft:raft_replacable run scoreboard players set #found_valid shark.detect 1
execute as @e[tag=temp_shark_target,limit=1] at @s if block ~ ~ ~-1 #minecraft:raft_replacable run scoreboard players set #water_dir shark.detect 3

execute if score #found_valid shark.detect matches 0 run kill @e[tag=temp_shark_target]
execute if score #found_valid shark.detect matches 0 run function mineraft:shark/try_find_raft_target
execute if score #found_valid shark.detect matches 0 run return 0

scoreboard players set #target_found shark.detect 1

# East
execute if score #water_dir shark.detect matches 0 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~1 ~ ~
# West
execute if score #water_dir shark.detect matches 1 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~-1 ~ ~
# South
execute if score #water_dir shark.detect matches 2 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~ ~ ~1
# North
execute if score #water_dir shark.detect matches 3 as @e[tag=temp_shark_target,limit=1] at @s run tp @s ~ ~ ~-1

scoreboard players operation @s shark.water_dir = #water_dir shark.detect

execute as @e[tag=temp_shark_target,limit=1] at @s run tp @e[tag=shark_target,limit=1] ~ ~0.5 ~

execute as @e[tag=shark_target,limit=1] at @s run function mineraft:shark/check_adjacent_water

execute if score #valid_water_found shark.detect matches 0 run kill @e[tag=temp_shark_target]
execute if score #valid_water_found shark.detect matches 0 run scoreboard players set #target_found shark.detect 0
execute if score #valid_water_found shark.detect matches 0 run function mineraft:shark/try_find_raft_target
