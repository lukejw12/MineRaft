execute if score #ray.kind mr.data matches 2 if data storage mineraft:tmp pl.def{stackable:1b} run return run function mineraft:place/anchor/stack
execute unless score #ray.kind mr.data matches 1 run return fail
function mineraft:place/key_hit
function mineraft:place/check/has_floor with storage mineraft:tmp k
execute if score #pl.ok mr.data matches 0 run return fail
function mineraft:place/hit_tile
scoreboard players operation #pl.ax mr.data = #t.cx mr.data
scoreboard players operation #pl.ay mr.data = #ray.by mr.data
scoreboard players operation #pl.az mr.data = #t.cz mr.data
scoreboard players set #pl.has_target mr.data 1
function mineraft:place/check/footprint
function mineraft:place/check/hook
