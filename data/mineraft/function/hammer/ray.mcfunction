#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:hammer/hit_block
scoreboard players add #distance hammer 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit hammer matches 0 if score #distance hammer matches ..60 positioned ^ ^ ^0.1 run function mineraft:hammer/ray
