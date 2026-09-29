data modify storage mineraft:tmp sa set value {}
execute store result storage mineraft:tmp sa.x int 1 run scoreboard players get #t.x mr.data
execute store result storage mineraft:tmp sa.z int 1 run scoreboard players get #t.z mr.data
execute store result storage mineraft:tmp sa.ym3 int 1 run scoreboard players remove #t.y mr.data 3
scoreboard players add #t.y mr.data 3
execute store result storage mineraft:tmp sa.xp int 1 run scoreboard players add #t.x mr.data 3
execute store result storage mineraft:tmp sa.xm int 1 run scoreboard players remove #t.x mr.data 6
scoreboard players add #t.x mr.data 3
execute store result storage mineraft:tmp sa.zp int 1 run scoreboard players add #t.z mr.data 3
execute store result storage mineraft:tmp sa.zm int 1 run scoreboard players remove #t.z mr.data 6
scoreboard players add #t.z mr.data 3
