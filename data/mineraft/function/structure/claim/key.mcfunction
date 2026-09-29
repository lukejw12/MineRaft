data modify storage mineraft:tmp k set value {}
data modify storage mineraft:tmp k.m set from storage mineraft:tmp rl[0].m
data modify storage mineraft:tmp k.s set from storage mineraft:tmp rl[0].s
data modify storage mineraft:tmp k.h set from storage mineraft:tmp rl[0].h
data modify storage mineraft:tmp k.t set from entity @s data.mr.type
execute store result score #c.x mr.data run data get storage mineraft:tmp rl[0].o[0]
scoreboard players operation #c.x mr.data += #c.rx mr.data
execute store result storage mineraft:tmp k.x int 1 run scoreboard players get #c.x mr.data
execute store result score #c.y mr.data run data get storage mineraft:tmp rl[0].o[1]
scoreboard players operation #c.y mr.data += #c.ry mr.data
execute store result storage mineraft:tmp k.y int 1 run scoreboard players get #c.y mr.data
execute store result score #c.z mr.data run data get storage mineraft:tmp rl[0].o[2]
scoreboard players operation #c.z mr.data += #c.rz mr.data
execute store result storage mineraft:tmp k.z int 1 run scoreboard players get #c.z mr.data
execute store result storage mineraft:tmp k.x3 int 1 run scoreboard players add #c.x mr.data 3
execute store result storage mineraft:tmp k.y3 int 1 run scoreboard players add #c.y mr.data 3
execute store result storage mineraft:tmp k.z3 int 1 run scoreboard players add #c.z mr.data 3
execute store result storage mineraft:tmp k.id int 1 run scoreboard players get @s mr.id
execute if data storage mineraft:tmp rl[0].to run function mineraft:structure/claim/key_owner
