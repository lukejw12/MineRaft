$execute store result score #cf.p mr.data run data get entity @s data.slot$(n).progress
$execute store result score #cf.m mr.data run data get entity @s data.slot$(n).max
scoreboard players add #cf.p mr.data 1
$execute store result entity @s data.slot$(n).progress int 1 run scoreboard players get #cf.p mr.data
execute if score #cf.p mr.data < #cf.m mr.data run return 0
$data modify entity @s data.slot$(n).done set value 1b
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1.2
