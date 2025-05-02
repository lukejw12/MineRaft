
kill @e[tag=temp_shark_target]

scoreboard players remove #max_tries shark.detect 1

execute if score #max_tries shark.detect matches ..0 run return 0

scoreboard players add #direction shark.detect 1
execute if score #direction shark.detect matches 8.. run scoreboard players set #direction shark.detect 0

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

execute if score #found_valid shark.detect matches 0 run function mineraft:shark/find_valid_direction