#Setting up the raycasting data.

tag @s add raft_extension_net
scoreboard players set #hit raft_extension_net 0
scoreboard players set #distance raft_extension_net 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_extension/collection_net/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove raft_extension_net