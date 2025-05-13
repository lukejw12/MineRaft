weather clear
execute if score #timer weather.timer matches 0 run scoreboard players set #resource_multiplier resource_delay 2
execute if score #timer weather.timer matches 0..1 as @a at @s run particle minecraft:cloud ~ ~10 ~ 15 2 15 0.05 5 normal