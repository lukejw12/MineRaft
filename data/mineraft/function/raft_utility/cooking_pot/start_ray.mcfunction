#Setting up the raycasting data.

tag @s add cooking_pot
scoreboard players set #hit cooking_pot 0
scoreboard players set #distance cooking_pot 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_utility/cooking_pot/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove cooking_pot