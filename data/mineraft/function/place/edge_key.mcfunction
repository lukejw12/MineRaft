data modify storage mineraft:tmp pl.edge set value {s:"n"}
scoreboard players operation #e.x mr.data = #t.cx mr.data
scoreboard players operation #e.z mr.data = #t.cz mr.data
scoreboard players operation #e.rx mr.data = #t.cx mr.data
scoreboard players operation #e.rz mr.data = #t.cz mr.data
execute if score #pl.rot mr.data matches 0 run scoreboard players add #e.z mr.data 3
execute if score #pl.rot mr.data matches 0 run scoreboard players add #e.rz mr.data 1
execute if score #pl.rot mr.data matches 1 run data modify storage mineraft:tmp pl.edge.s set value "w"
execute if score #pl.rot mr.data matches 1 run scoreboard players remove #e.rx mr.data 1
execute if score #pl.rot mr.data matches 2 run scoreboard players remove #e.rz mr.data 1
execute if score #pl.rot mr.data matches 3 run data modify storage mineraft:tmp pl.edge.s set value "w"
execute if score #pl.rot mr.data matches 3 run scoreboard players add #e.x mr.data 3
execute if score #pl.rot mr.data matches 3 run scoreboard players add #e.rx mr.data 1
execute store result storage mineraft:tmp pl.edge.x int 1 run scoreboard players get #e.x mr.data
execute store result storage mineraft:tmp pl.edge.y int 1 run scoreboard players get #pl.ay mr.data
execute store result storage mineraft:tmp pl.edge.z int 1 run scoreboard players get #e.z mr.data
execute store result storage mineraft:tmp pl.edge.tx int 1 run scoreboard players get #t.cx mr.data
execute store result storage mineraft:tmp pl.edge.ty int 1 run scoreboard players get #pl.ay mr.data
execute store result storage mineraft:tmp pl.edge.tz int 1 run scoreboard players get #t.cz mr.data
