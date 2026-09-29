execute unless score #ray.kind mr.data matches 1 run return fail
function mineraft:place/hit_tile
function mineraft:place/check/water_tile with storage mineraft:tmp k
execute if score #pl.ok mr.data matches 0 run return fail
scoreboard players operation #pl.ax mr.data = #t.cx mr.data
scoreboard players operation #pl.ay mr.data = #ray.by mr.data
scoreboard players operation #pl.az mr.data = #t.cz mr.data
scoreboard players set #pl.has_target mr.data 1
scoreboard players set #pl.valid mr.data 1
function mineraft:place/check/armor_free with storage mineraft:tmp k
function mineraft:place/check/hook
