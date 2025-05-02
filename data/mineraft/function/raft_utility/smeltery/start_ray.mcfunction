#Setting up the raycasting data.

tag @s add smeltery
scoreboard players set #hit smeltery 0
scoreboard players set #distance smeltery 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_utility/smeltery/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove smeltery