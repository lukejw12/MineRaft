execute if entity @e[type=interaction,tag=tree_plot_interact,distance=..1] run function mineraft:ui/tree_plot/hit_tree_plot

execute unless score #ui_hit tree_plot matches 1 if score #ui_distance tree_plot matches ..25 positioned ^ ^ ^0.2 run function mineraft:ui/tree_plot/raycast

scoreboard players add #ui_distance tree_plot 1