#Setting up the raycasting data.

tag @s add foundation
scoreboard players set #hit foundation 0
scoreboard players set #distance foundation 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_extension/foundation_armor/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove foundation