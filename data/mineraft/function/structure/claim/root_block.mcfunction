execute store result score #c.rx mr.data run data get entity @s Pos[0]
execute store result score #c.ry mr.data run data get entity @s Pos[1]
execute store result score #c.rz mr.data run data get entity @s Pos[2]
execute if score #sp.sailing sp.data matches 1 run function mineraft:sail/root_block
