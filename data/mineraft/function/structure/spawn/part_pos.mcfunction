execute store result score #r.x mr.data run data get storage mineraft:tmp it[0].at[0] 1000
execute store result score #s.dy mr.data run data get storage mineraft:tmp it[0].at[1] 1000
execute store result score #r.z mr.data run data get storage mineraft:tmp it[0].at[2] 1000
scoreboard players operation #r.rot mr.data = #pl.rot mr.data
function mineraft:util/rotate
scoreboard players operation #s.wx mr.data = #pl.ax mr.data
scoreboard players operation #s.wx mr.data *= #1000 mr.const
scoreboard players add #s.wx mr.data 500
scoreboard players operation #s.wx mr.data += #r.ox mr.data
scoreboard players operation #s.wy mr.data = #pl.ay mr.data
scoreboard players operation #s.wy mr.data *= #1000 mr.const
scoreboard players add #s.wy mr.data 1000
scoreboard players operation #s.wy mr.data += #s.dy mr.data
scoreboard players operation #s.wz mr.data = #pl.az mr.data
scoreboard players operation #s.wz mr.data *= #1000 mr.const
scoreboard players add #s.wz mr.data 500
scoreboard players operation #s.wz mr.data += #r.oz mr.data
execute if score #sp.sailing sp.data matches 1 run scoreboard players operation #s.wx mr.data += #sail.dx mr.data
execute if score #sp.sailing sp.data matches 1 run scoreboard players operation #s.wz mr.data += #sail.dz mr.data
scoreboard players operation #s.m mr.data = #s.wx mr.data
scoreboard players operation #s.m mr.data %= #1000 mr.const
execute if score #s.m mr.data matches 0 run scoreboard players add #s.wx mr.data 1
scoreboard players operation #s.m mr.data = #s.wz mr.data
scoreboard players operation #s.m mr.data %= #1000 mr.const
execute if score #s.m mr.data matches 0 run scoreboard players add #s.wz mr.data 1
execute store result storage mineraft:tmp p.x double 0.001 run scoreboard players get #s.wx mr.data
execute store result storage mineraft:tmp p.y double 0.001 run scoreboard players get #s.wy mr.data
execute store result storage mineraft:tmp p.z double 0.001 run scoreboard players get #s.wz mr.data
