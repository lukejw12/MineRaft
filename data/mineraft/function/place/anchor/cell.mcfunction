execute unless score #ray.kind mr.data matches 1 run return fail
scoreboard players operation #pl.ax mr.data = #ray.bx mr.data
scoreboard players operation #pl.ay mr.data = #ray.by mr.data
scoreboard players operation #pl.az mr.data = #ray.bz mr.data
function mineraft:place/key_hit
function mineraft:place/check/has_floor with storage mineraft:tmp k
execute if score #pl.ok mr.data matches 0 run return fail
scoreboard players set #pl.has_target mr.data 1
function mineraft:place/check/footprint
execute if data storage mineraft:tmp pl.def{edge_forward:1b} run function mineraft:place/check/edge_forward
function mineraft:place/check/hook
