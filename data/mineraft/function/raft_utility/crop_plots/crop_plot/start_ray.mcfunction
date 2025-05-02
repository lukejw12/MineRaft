#Setting up the raycasting data.

tag @s add crop_plot
scoreboard players set #hit crop_plot 0
scoreboard players set #distance crop_plot 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_utility/crop_plots/crop_plot/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove crop_plot