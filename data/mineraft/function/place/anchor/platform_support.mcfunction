function mineraft:place/find_support
execute unless score #sup.found mr.data matches 1 run return fail
scoreboard players operation #pl.ax mr.data = #ray.bx mr.data
scoreboard players operation #pl.ay mr.data = #sup.y mr.data
scoreboard players add #pl.ay mr.data 3
scoreboard players operation #pl.az mr.data = #ray.bz mr.data
scoreboard players set #pl.has_target mr.data 1
scoreboard players set #pl.valid mr.data 1
function mineraft:place/check/platform_target
