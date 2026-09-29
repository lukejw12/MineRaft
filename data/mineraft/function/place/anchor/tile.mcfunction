execute unless score #ray.kind mr.data matches 1 run return fail
function mineraft:place/hit_tile
function mineraft:place/check/water_tile with storage mineraft:tmp k
execute if score #pl.ok mr.data matches 0 run return fail
scoreboard players operation #o.c mr.data = #t.cx mr.data
scoreboard players operation #o.c mr.data *= #10 mr.const
scoreboard players add #o.c mr.data 5
scoreboard players operation #o.x mr.data = #ray.px mr.data
scoreboard players operation #o.x mr.data -= #o.c mr.data
scoreboard players operation #o.c mr.data = #t.cz mr.data
scoreboard players operation #o.c mr.data *= #10 mr.const
scoreboard players add #o.c mr.data 5
scoreboard players operation #o.z mr.data = #ray.pz mr.data
scoreboard players operation #o.z mr.data -= #o.c mr.data
scoreboard players operation #a.x mr.data = #o.x mr.data
execute if score #a.x mr.data matches ..-1 run scoreboard players operation #a.x mr.data *= #-1 mr.const
scoreboard players operation #a.z mr.data = #o.z mr.data
execute if score #a.z mr.data matches ..-1 run scoreboard players operation #a.z mr.data *= #-1 mr.const
scoreboard players operation #pl.ax mr.data = #t.cx mr.data
scoreboard players operation #pl.ay mr.data = #ray.by mr.data
scoreboard players operation #pl.az mr.data = #t.cz mr.data
execute if score #a.x mr.data >= #a.z mr.data if score #o.x mr.data matches 1.. run scoreboard players add #pl.ax mr.data 3
execute if score #a.x mr.data >= #a.z mr.data if score #o.x mr.data matches ..0 run scoreboard players remove #pl.ax mr.data 3
execute if score #a.x mr.data < #a.z mr.data if score #o.z mr.data matches 1.. run scoreboard players add #pl.az mr.data 3
execute if score #a.x mr.data < #a.z mr.data if score #o.z mr.data matches ..0 run scoreboard players remove #pl.az mr.data 3
scoreboard players set #pl.has_target mr.data 1
scoreboard players set #pl.valid mr.data 1
function mineraft:place/key_anchor
function mineraft:place/check/tile_free with storage mineraft:tmp k
execute unless score #sp.sailing sp.data matches 1 run function mineraft:place/check/water_space with storage mineraft:tmp k
execute if score #sp.sailing sp.data matches 1 run function mineraft:place/sail/water_space
function mineraft:place/check/hook
