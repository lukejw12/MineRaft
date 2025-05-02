#Setting up the raycasting data.

tag @s add wooden_staircase
scoreboard players set #hit wooden_staircase 0
scoreboard players set #distance wooden_staircase 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_decor/staircase/wooden_staircase/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove wooden_staircase