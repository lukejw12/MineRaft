data modify storage mineraft:tmp c set from storage mineraft:tmp pl.edge
execute store result storage mineraft:tmp c.id int 1 run scoreboard players get #s.id mr.data
data modify storage mineraft:tmp c.t set from storage mineraft:tmp pl.type
function mineraft:grid/edge_claim with storage mineraft:tmp c
data modify storage mineraft:tmp c2 set value {m:"edge",o:[0,0,0],to:[0,0,0]}
data modify storage mineraft:tmp c2.s set from storage mineraft:tmp c.s
execute store result score #c.o mr.data run data get storage mineraft:tmp c.x
scoreboard players operation #c.o mr.data -= #c.rx mr.data
execute store result storage mineraft:tmp c2.o[0] int 1 run scoreboard players get #c.o mr.data
execute store result score #c.o mr.data run data get storage mineraft:tmp c.y
scoreboard players operation #c.o mr.data -= #c.ry mr.data
execute store result storage mineraft:tmp c2.o[1] int 1 run scoreboard players get #c.o mr.data
execute store result score #c.o mr.data run data get storage mineraft:tmp c.z
scoreboard players operation #c.o mr.data -= #c.rz mr.data
execute store result storage mineraft:tmp c2.o[2] int 1 run scoreboard players get #c.o mr.data
execute store result score #c.o mr.data run data get storage mineraft:tmp c.tx
scoreboard players operation #c.o mr.data -= #c.rx mr.data
execute store result storage mineraft:tmp c2.to[0] int 1 run scoreboard players get #c.o mr.data
execute store result score #c.o mr.data run data get storage mineraft:tmp c.ty
scoreboard players operation #c.o mr.data -= #c.ry mr.data
execute store result storage mineraft:tmp c2.to[1] int 1 run scoreboard players get #c.o mr.data
execute store result score #c.o mr.data run data get storage mineraft:tmp c.tz
scoreboard players operation #c.o mr.data -= #c.rz mr.data
execute store result storage mineraft:tmp c2.to[2] int 1 run scoreboard players get #c.o mr.data
data modify entity @s data.mr.claims append from storage mineraft:tmp c2
