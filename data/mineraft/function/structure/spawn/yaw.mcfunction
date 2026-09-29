scoreboard players operation #s.yaw mr.data = #pl.rot mr.data
scoreboard players operation #s.yaw mr.data *= #90 mr.const
execute store result score #s.t mr.data run data get storage mineraft:tmp pl.def.yaw
scoreboard players operation #s.yaw mr.data += #s.t mr.data
scoreboard players operation #s.yaw mr.data %= #360 mr.const
