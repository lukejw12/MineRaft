execute if entity @e[type=interaction,tag=water_purifier_interact,distance=..1] run function mineraft:ui/water_purifier/hit_water_purifier

execute unless score #ui_hit water_purifier matches 1 if score #ui_distance water_purifier matches ..25 positioned ^ ^ ^0.2 run function mineraft:ui/water_purifier/raycast

scoreboard players add #ui_distance water_purifier 1