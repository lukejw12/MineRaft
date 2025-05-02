#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:raft_utility/crop_plots/large_crop_plot/hit_block
scoreboard players add #distance large_crop_plot 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit large_crop_plot matches 0 if score #distance large_crop_plot matches ..60 positioned ^ ^ ^0.1 run function mineraft:raft_utility/crop_plots/large_crop_plot/ray