#Mark the ray as having found a block.

scoreboard players set #hit stop_reach 1

#Running custom commands since the block was found.
execute if entity @a[y_rotation=-180..-135,tag=stop_reach] align xz run summon marker ~0.5 ~ ~0.5 {Tags:["check_y_level"]}
execute if entity @a[y_rotation=135..180,tag=stop_reach] align xz run summon marker ~0.5 ~ ~0.5 {Tags:["check_y_level"]}
execute if entity @a[y_rotation=-135..-45,tag=stop_reach] align xz run summon marker ~0.5 ~ ~0.5 {Tags:["check_y_level"]}
execute if entity @a[y_rotation=45..135,tag=stop_reach] align xz run summon marker ~0.5 ~ ~0.5 {Tags:["check_y_level"]}
execute if entity @a[y_rotation=-45..45,tag=stop_reach] align xz run summon marker ~0.5 ~ ~0.5 {Tags:["check_y_level"]}
execute if block ~ ~-0.2 ~ #raft_replacable if entity @e[type=marker,tag=check_y_level,y=62,distance=..1.7] run attribute @s minecraft:block_interaction_range base set 0
kill @e[tag=check_y_level]
