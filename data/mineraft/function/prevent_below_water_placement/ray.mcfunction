#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #minecraft:blocks run function mineraft:prevent_below_water_placement/hit_block
scoreboard players add #distance stop_reach 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit stop_reach matches 0 if score #distance stop_reach matches ..60 positioned ^ ^ ^0.1 run function mineraft:prevent_below_water_placement/ray