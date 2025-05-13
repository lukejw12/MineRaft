scoreboard players remove #transition weather.transition 1

execute if score #transition weather.transition matches 30..60 run particle minecraft:cloud ~ ~20 ~ 30 5 30 0.05 5 normal @a

execute if score #transition weather.transition matches 60 as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.3 1.5