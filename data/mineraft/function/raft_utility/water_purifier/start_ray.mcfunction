#Setting up the raycasting data.

tag @s add water_purifier
scoreboard players set #hit water_purifier 0
scoreboard players set #distance water_purifier 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_utility/water_purifier/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove water_purifier