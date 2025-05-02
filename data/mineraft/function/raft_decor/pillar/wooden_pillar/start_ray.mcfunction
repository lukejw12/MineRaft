#Setting up the raycasting data.

tag @s add wooden_support
scoreboard players set #hit wooden_support 0
scoreboard players set #distance wooden_support 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_decor/pillar/wooden_pillar/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove wooden_support