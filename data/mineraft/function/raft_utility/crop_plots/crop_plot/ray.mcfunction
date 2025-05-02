#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/crop_plots/crop_plot/hit_block
scoreboard players add #distance crop_plot 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit crop_plot matches 0 if score #distance crop_plot matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/crop_plots/crop_plot/ray