$data modify storage mineraft:tmp c set value {m:"$(m)",o:[0,0,0]}
execute store result storage mineraft:tmp c.x int 1 run scoreboard players get #c.x mr.data
execute store result storage mineraft:tmp c.y int 1 run scoreboard players get #c.y mr.data
execute store result storage mineraft:tmp c.z int 1 run scoreboard players get #c.z mr.data
execute store result storage mineraft:tmp c.id int 1 run scoreboard players get #s.id mr.data
execute store result storage mineraft:tmp c.h int 1 run scoreboard players get #c.h mr.data
data modify storage mineraft:tmp c.t set from storage mineraft:tmp pl.type
function mineraft:grid/claim with storage mineraft:tmp c
scoreboard players operation #c.o mr.data = #c.x mr.data
scoreboard players operation #c.o mr.data -= #c.rx mr.data
execute store result storage mineraft:tmp c.o[0] int 1 run scoreboard players get #c.o mr.data
scoreboard players operation #c.o mr.data = #c.y mr.data
scoreboard players operation #c.o mr.data -= #c.ry mr.data
execute store result storage mineraft:tmp c.o[1] int 1 run scoreboard players get #c.o mr.data
scoreboard players operation #c.o mr.data = #c.z mr.data
scoreboard players operation #c.o mr.data -= #c.rz mr.data
execute store result storage mineraft:tmp c.o[2] int 1 run scoreboard players get #c.o mr.data
data modify storage mineraft:tmp c2 set value {}
data modify storage mineraft:tmp c2.m set from storage mineraft:tmp c.m
data modify storage mineraft:tmp c2.o set from storage mineraft:tmp c.o
data modify storage mineraft:tmp c2.h set from storage mineraft:tmp c.h
data modify entity @s data.mr.claims append from storage mineraft:tmp c2
