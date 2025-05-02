
execute at @s if entity @e[tag=shark_target,distance=5..] run summon area_effect_cloud ^ ^ ^0.5 {Tags:["motion_helper"],Duration:1}
execute at @s if entity @e[tag=shark_target,distance=3..5] run summon area_effect_cloud ^ ^ ^0.3 {Tags:["motion_helper"],Duration:1}
execute at @s if entity @e[tag=shark_target,distance=..3] run summon area_effect_cloud ^ ^ ^0.2 {Tags:["motion_helper"],Duration:1}

execute store result score #mx shark.detect run data get entity @e[tag=motion_helper,limit=1] Pos[0] 100
execute store result score #mz shark.detect run data get entity @e[tag=motion_helper,limit=1] Pos[2] 100
execute store result score #sx shark.detect run data get entity @s Pos[0] 100
execute store result score #sz shark.detect run data get entity @s Pos[2] 100

scoreboard players operation #mx shark.detect -= #sx shark.detect
scoreboard players operation #mz shark.detect -= #sz shark.detect

execute store result entity @s Motion[0] double 0.01 run scoreboard players get #mx shark.detect
execute store result entity @s Motion[2] double 0.01 run scoreboard players get #mz shark.detect

kill @e[tag=motion_helper]