execute store result score #c.x mr.data run data get storage mineraft:tmp rl[0].to[0]
scoreboard players operation #c.x mr.data += #c.rx mr.data
execute store result storage mineraft:tmp k.tx int 1 run scoreboard players get #c.x mr.data
execute store result score #c.x mr.data run data get storage mineraft:tmp rl[0].to[1]
scoreboard players operation #c.x mr.data += #c.ry mr.data
execute store result storage mineraft:tmp k.ty int 1 run scoreboard players get #c.x mr.data
execute store result score #c.x mr.data run data get storage mineraft:tmp rl[0].to[2]
scoreboard players operation #c.x mr.data += #c.rz mr.data
execute store result storage mineraft:tmp k.tz int 1 run scoreboard players get #c.x mr.data
