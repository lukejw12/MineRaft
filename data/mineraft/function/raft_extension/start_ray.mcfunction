#Setting up the raycasting data.

tag @s add raft_extension
scoreboard players set #hit raft_extension 0
scoreboard players set #distance raft_extension 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_extension/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove raft_extension