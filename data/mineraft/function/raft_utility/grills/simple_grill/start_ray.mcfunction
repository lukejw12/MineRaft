#Setting up the raycasting data.

tag @s add simple_grill
scoreboard players set #hit simple_grill 0
scoreboard players set #distance simple_grill 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_utility/grills/simple_grill/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove simple_grill