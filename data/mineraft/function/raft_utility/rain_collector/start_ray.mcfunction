#Setting up the raycasting data.

tag @s add rain_collector
scoreboard players set #hit rain_collector 0
scoreboard players set #distance rain_collector 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:raft_utility/rain_collector/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove rain_collector