advancement revoke @s only mineraft:technical/use_placeable
execute if score @s mr.cd matches 1.. run return 0
scoreboard players set @s mr.cd 5
execute at @s run function mineraft:place/resolve
execute if score #pl.has_target mr.data matches 1 if score #pl.valid mr.data matches 1 at @s run function mineraft:place/commit
