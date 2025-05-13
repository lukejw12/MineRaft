weather rain
execute if score #timer weather.timer matches 0 run scoreboard players set #resource_multiplier resource_delay 3
execute if score #timer weather.timer matches 0..3 as @a at @s run particle minecraft:rain ~ ~10 ~ 10 2 10 0.1 15 normal