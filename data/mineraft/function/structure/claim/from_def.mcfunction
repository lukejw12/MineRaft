execute store result score #c.h mr.data run data get storage mineraft:tmp pl.def.h
data modify storage mineraft:tmp fp set from storage mineraft:tmp pl.def.footprint
execute if data storage mineraft:tmp fp[0] run function mineraft:structure/claim/footprint_loop
scoreboard players operation #c.x mr.data = #pl.ax mr.data
scoreboard players operation #c.y mr.data = #pl.ay mr.data
scoreboard players operation #c.z mr.data = #pl.az mr.data
execute if data storage mineraft:tmp pl.def.claims{tile:1b} run function mineraft:structure/claim/add {m:"tile"}
execute if data storage mineraft:tmp pl.def.claims{armor:1b} run function mineraft:structure/claim/add {m:"armor"}
execute if data storage mineraft:tmp pl.edge run function mineraft:structure/claim/edge
