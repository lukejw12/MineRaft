execute if entity @e[type=interaction,tag=counter_interact,distance=..1] run function mineraft:ui/foundation_counter/hit_counter

execute unless score #ui_hit foundation_counter matches 1 if score #ui_distance foundation_counter matches ..25 positioned ^ ^ ^0.2 run function mineraft:ui/foundation_counter/raycast

scoreboard players add #ui_distance foundation_counter 1