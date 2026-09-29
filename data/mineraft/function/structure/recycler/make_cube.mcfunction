scoreboard players set @s mr.progress 0
scoreboard players remove @s mr.fill 150
execute store result score #rc.cubes mr.data run data get entity @s data.cube_count
scoreboard players add #rc.cubes mr.data 1
execute store result entity @s data.cube_count int 1 run scoreboard players get #rc.cubes mr.data
playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.4 1.8
particle item{item:{id:"minecraft:poisonous_potato"}} ~ ~0.8 ~ 0.2 0.2 0.2 0.05 10
execute if score #rc.cubes mr.data matches 4.. run return run function mineraft:structure/recycler/finish
execute if score @s mr.fill matches ..149 run function mineraft:structure/recycler/finish
