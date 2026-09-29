scoreboard players set #raft_init mr.data 1
execute store result score #pl.ax mr.data run data get entity @s Pos[0]
execute store result score #pl.az mr.data run data get entity @s Pos[2]
scoreboard players set #pl.ay mr.data 62
scoreboard players set #pl.rot mr.data 0
scoreboard players operation #grid.ox mr.data = #pl.ax mr.data
scoreboard players operation #grid.oz mr.data = #pl.az mr.data
data remove storage mineraft:tmp pl
function mineraft:place/load_def {type:"foundation",variant:"basic"}
function mineraft:structure/spawn/start
data modify storage mineraft:tmp w set value {}
scoreboard players operation #w.t mr.data = #pl.ax mr.data
scoreboard players operation #w.t mr.data *= #10 mr.const
scoreboard players add #w.t mr.data 5
execute store result storage mineraft:tmp w.x double 0.1 run scoreboard players get #w.t mr.data
scoreboard players operation #w.t mr.data = #pl.az mr.data
scoreboard players operation #w.t mr.data *= #10 mr.const
scoreboard players add #w.t mr.data 5
execute store result storage mineraft:tmp w.z double 0.1 run scoreboard players get #w.t mr.data
execute store result storage mineraft:tmp w.bx int 1 run scoreboard players get #pl.ax mr.data
execute store result storage mineraft:tmp w.bz int 1 run scoreboard players get #pl.az mr.data
function mineraft:world/init_at with storage mineraft:tmp w
