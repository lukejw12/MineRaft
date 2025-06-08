execute if entity @e[type=interaction,tag=recycler_interact,distance=..1] run function mineraft:ui/recycler/hit_recycler

execute unless score #ui_hit recycler matches 1 if score #ui_distance recycler matches ..25 positioned ^ ^ ^0.2 run function mineraft:ui/recycler/raycast

scoreboard players add #ui_distance recycler 1