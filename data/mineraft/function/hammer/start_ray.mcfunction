#Setting up the raycasting data.

tag @s add hammer
scoreboard players set #hit hammer 0
scoreboard players set #distance hammer 0

#Activating the raycast. This function will call itself until it is done.

function mineraft:hammer/ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove hammer