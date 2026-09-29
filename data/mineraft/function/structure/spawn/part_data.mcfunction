data modify storage mineraft:tmp p set value {kind:"display",mode:"none",t:[0f,0f,0f],s:[1f,1f,1f],tags:[]}
data modify storage mineraft:tmp p.model set from storage mineraft:tmp pl.def.model
data modify storage mineraft:tmp p merge from storage mineraft:tmp it[0]
function mineraft:structure/spawn/part_pos
scoreboard players operation #s.pyaw mr.data = #s.yaw mr.data
execute store result score #s.t mr.data run data get storage mineraft:tmp it[0].yaw
scoreboard players operation #s.pyaw mr.data += #s.t mr.data
execute if data storage mineraft:tmp p{norot:1b} run scoreboard players set #s.pyaw mr.data 0
execute store result storage mineraft:tmp p.yaw double 1 run scoreboard players get #s.pyaw mr.data
