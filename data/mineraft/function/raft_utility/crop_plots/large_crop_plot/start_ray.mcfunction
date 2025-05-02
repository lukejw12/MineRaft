#Setting up the raycasting data.

tag @s add large_crop_plot
scoreboard players set #hit large_crop_plot 0
scoreboard players set #distance large_crop_plot 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_utility/crop_plots/large_crop_plot/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove large_crop_plot