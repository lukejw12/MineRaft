data modify storage mineraft:tmp b set from storage mineraft:tmp ap[0]
execute unless data storage mineraft:tmp b.k run data modify storage mineraft:tmp b.k set value "full"
execute store result score #c.x mr.data run data get storage mineraft:tmp b.o[0]
scoreboard players operation #c.x mr.data += #c.rx mr.data
execute store result storage mineraft:tmp b.x int 1 run scoreboard players get #c.x mr.data
execute store result score #c.x mr.data run data get storage mineraft:tmp b.o[1]
scoreboard players operation #c.x mr.data += #c.ry mr.data
execute store result storage mineraft:tmp b.y int 1 run scoreboard players get #c.x mr.data
execute store result score #c.x mr.data run data get storage mineraft:tmp b.o[2]
scoreboard players operation #c.x mr.data += #c.rz mr.data
execute store result storage mineraft:tmp b.z int 1 run scoreboard players get #c.x mr.data
execute store result storage mineraft:tmp b.id int 1 run scoreboard players get #c.id mr.data
