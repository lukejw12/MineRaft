execute store result score #c.rx mr.data run data get entity @s Pos[0] 1000
scoreboard players operation #c.rx mr.data -= #sail.dx mr.data
scoreboard players operation #c.rx mr.data /= #1000 mr.const
execute store result score #c.rz mr.data run data get entity @s Pos[2] 1000
scoreboard players operation #c.rz mr.data -= #sail.dz mr.data
scoreboard players operation #c.rz mr.data /= #1000 mr.const
