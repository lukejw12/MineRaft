#Setting up the raycasting data.

tag @s add stop_reach
scoreboard players set #hit stop_reach 0
scoreboard players set #distance stop_reach 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:prevent_below_water_placement/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove stop_reach