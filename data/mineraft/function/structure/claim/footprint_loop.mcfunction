execute store result score #r.x mr.data run data get storage mineraft:tmp fp[0][0]
execute store result score #r.z mr.data run data get storage mineraft:tmp fp[0][1]
scoreboard players operation #r.rot mr.data = #pl.rot mr.data
function mineraft:util/rotate
scoreboard players operation #c.x mr.data = #pl.ax mr.data
scoreboard players operation #c.x mr.data += #r.ox mr.data
scoreboard players operation #c.y mr.data = #pl.ay mr.data
scoreboard players operation #c.z mr.data = #pl.az mr.data
scoreboard players operation #c.z mr.data += #r.oz mr.data
execute if data storage mineraft:tmp pl.def.claims{cells:1b} run function mineraft:structure/claim/add {m:"cell"}
execute if data storage mineraft:tmp pl.def.claims{floor:1b} run function mineraft:structure/claim/add {m:"floor"}
data remove storage mineraft:tmp fp[0]
execute if data storage mineraft:tmp fp[0] run function mineraft:structure/claim/footprint_loop
