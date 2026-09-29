data modify storage mineraft:tmp k set value {}
execute store result storage mineraft:tmp k.x int 1 run scoreboard players get #pl.ax mr.data
execute store result storage mineraft:tmp k.y int 1 run scoreboard players get #pl.ay mr.data
execute store result storage mineraft:tmp k.z int 1 run scoreboard players get #pl.az mr.data
scoreboard players operation #k.t mr.data = #pl.ax mr.data
execute store result storage mineraft:tmp k.xm int 1 run scoreboard players remove #k.t mr.data 1
execute store result storage mineraft:tmp k.xp int 1 run scoreboard players add #k.t mr.data 2
scoreboard players operation #k.t mr.data = #pl.az mr.data
execute store result storage mineraft:tmp k.zm int 1 run scoreboard players remove #k.t mr.data 1
execute store result storage mineraft:tmp k.zp int 1 run scoreboard players add #k.t mr.data 2
scoreboard players operation #k.t mr.data = #pl.ay mr.data
execute store result storage mineraft:tmp k.ym3 int 1 run scoreboard players remove #k.t mr.data 3
scoreboard players operation #k.t mr.data = #pl.ay mr.data
execute store result storage mineraft:tmp k.y1 int 1 run scoreboard players add #k.t mr.data 1
execute store result storage mineraft:tmp k.y2 int 1 run scoreboard players add #k.t mr.data 1
execute store result storage mineraft:tmp k.y3 int 1 run scoreboard players add #k.t mr.data 1
