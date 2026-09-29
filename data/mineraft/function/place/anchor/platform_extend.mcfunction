function mineraft:place/hit_tile
function mineraft:place/check/is_platform with storage mineraft:tmp k
execute if score #pl.ok mr.data matches 0 run return fail
scoreboard players operation #pl.ax mr.data = #t.cx mr.data
scoreboard players operation #pl.ay mr.data = #ray.by mr.data
scoreboard players operation #pl.az mr.data = #t.cz mr.data
execute if score #pl.rot mr.data matches 0 run scoreboard players add #pl.az mr.data 3
execute if score #pl.rot mr.data matches 1 run scoreboard players remove #pl.ax mr.data 3
execute if score #pl.rot mr.data matches 2 run scoreboard players remove #pl.az mr.data 3
execute if score #pl.rot mr.data matches 3 run scoreboard players add #pl.ax mr.data 3
scoreboard players set #pl.has_target mr.data 1
scoreboard players set #pl.valid mr.data 1
function mineraft:place/check/platform_target
scoreboard players operation #t.x mr.data = #pl.ax mr.data
scoreboard players operation #t.y mr.data = #pl.ay mr.data
scoreboard players operation #t.z mr.data = #pl.az mr.data
function mineraft:structure/platform/support_args
function mineraft:structure/platform/is_supported with storage mineraft:tmp sa
execute if score #sup mr.data matches 0 run scoreboard players set #pl.valid mr.data 0
