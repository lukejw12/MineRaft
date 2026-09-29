execute store result score #r.x mr.data run data get storage mineraft:tmp bl[0].at[0]
execute store result score #c.dy mr.data run data get storage mineraft:tmp bl[0].at[1]
execute store result score #r.z mr.data run data get storage mineraft:tmp bl[0].at[2]
scoreboard players operation #r.rot mr.data = #pl.rot mr.data
function mineraft:util/rotate
scoreboard players operation #c.x mr.data = #pl.ax mr.data
scoreboard players operation #c.x mr.data += #r.ox mr.data
scoreboard players operation #c.x mr.data -= #c.rx mr.data
scoreboard players operation #c.y mr.data = #pl.ay mr.data
scoreboard players add #c.y mr.data 1
scoreboard players operation #c.y mr.data += #c.dy mr.data
scoreboard players operation #c.y mr.data -= #c.ry mr.data
scoreboard players operation #c.z mr.data = #pl.az mr.data
scoreboard players operation #c.z mr.data += #r.oz mr.data
scoreboard players operation #c.z mr.data -= #c.rz mr.data
data modify storage mineraft:tmp b set value {o:[0,0,0]}
data modify storage mineraft:tmp b.k set from storage mineraft:tmp bl[0].k
execute store result storage mineraft:tmp b.o[0] int 1 run scoreboard players get #c.x mr.data
execute store result storage mineraft:tmp b.o[1] int 1 run scoreboard players get #c.y mr.data
execute store result storage mineraft:tmp b.o[2] int 1 run scoreboard players get #c.z mr.data
function mineraft:structure/collision/palette with storage mineraft:tmp bl[0]
data modify entity @s data.mr.blocks append from storage mineraft:tmp b
data remove storage mineraft:tmp bl[0]
execute if data storage mineraft:tmp bl[0] run function mineraft:structure/collision/record_loop
