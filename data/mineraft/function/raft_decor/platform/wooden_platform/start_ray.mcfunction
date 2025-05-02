#Setting up the raycasting data.

tag @s add wooden_platform
scoreboard players set #hit wooden_platform 0
scoreboard players set #distance wooden_platform 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_decor/platform/wooden_platform/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove wooden_platform