execute at @s if block ~ ~ ~1 end_rod run tp @s ~ ~ ~1
execute at @s if block ~ ~ ~-1 end_rod run tp @s ~ ~ ~-1
execute at @s if block ~1 ~ ~ end_rod run tp @s ~1 ~ ~
execute at @s if block ~-1 ~ ~ end_rod run tp @s ~-1 ~ ~
execute as @s at @s run function mineraft:raft_decor/platform/wooden_platform/repositioned_place
