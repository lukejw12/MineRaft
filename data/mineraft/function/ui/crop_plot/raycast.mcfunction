execute if entity @e[type=interaction,tag=crop_plot_interact,distance=..1] run function mineraft:ui/crop_plot/hit_crop_plot

execute unless score #ui_hit crop_plot matches 1 if score #ui_distance crop_plot matches ..25 positioned ^ ^ ^0.2 run function mineraft:ui/crop_plot/raycast

scoreboard players add #ui_distance crop_plot 1