execute store result score #slot_progress mr.data run data get entity @s data.slot4.progress
execute store result score #slot_max mr.data run data get entity @s data.slot4.max
scoreboard players add #slot_progress mr.data 1
execute store result entity @s data.slot4.progress int 1 run scoreboard players get #slot_progress mr.data
execute if score #slot_progress mr.data >= #slot_max mr.data run data modify entity @s data.slot4.done set value 1b
execute if score #slot_progress mr.data >= #slot_max mr.data at @s run playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1.2
