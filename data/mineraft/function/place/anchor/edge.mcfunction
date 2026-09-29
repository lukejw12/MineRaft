execute unless score #ray.kind mr.data matches 1 run return fail
function mineraft:place/key_hit
function mineraft:place/check/has_floor with storage mineraft:tmp k
execute if score #pl.ok mr.data matches 0 run return fail
function mineraft:place/hit_tile
scoreboard players operation #pl.ay mr.data = #ray.by mr.data
function mineraft:place/edge_key
scoreboard players operation #pl.ax mr.data = #e.rx mr.data
scoreboard players operation #pl.az mr.data = #e.rz mr.data
scoreboard players set #pl.has_target mr.data 1
scoreboard players set #pl.valid mr.data 1
function mineraft:place/check/edge_free with storage mineraft:tmp pl.edge
function mineraft:place/check/hook
