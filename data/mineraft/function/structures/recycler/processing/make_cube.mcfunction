
scoreboard players set @s mr.recycler_progress 0
scoreboard players remove @s mr.recycler_fill 150

execute store result score #cube_count mr.data run data get entity @s data.cube_count
scoreboard players add #cube_count mr.data 1
execute store result entity @s data.cube_count int 1 run scoreboard players get #cube_count mr.data

playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.4 1.8
particle item{item:{id:"minecraft:poisonous_potato"}} ~ ~0.8 ~ 0.2 0.2 0.2 0.05 10

execute if score #cube_count mr.data matches 4.. run return run function mineraft:structures/recycler/processing/finish_recycle
execute if score @s mr.recycler_fill matches ..149 run function mineraft:structures/recycler/processing/finish_recycle