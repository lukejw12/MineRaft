execute if entity @e[type=interaction,tag=cooking_pot_interact,distance=..1] run function mineraft:ui/cooking_pot/hit_cooking_pot
execute unless score #ui_hit cooking_pot matches 1 if score #ui_distance cooking_pot matches ..25 positioned ^ ^ ^0.2 run function mineraft:ui/cooking_pot/raycast

scoreboard players add #ui_distance cooking_pot 1