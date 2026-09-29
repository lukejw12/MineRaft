execute store result score #pt.n mr.data run random value 1..3
execute if data entity @s {data:{palm_v:0}} run scoreboard players add #pt.n mr.data 1
data modify storage mineraft:tmp pt set value {h:3.5d}
execute if data entity @s {data:{palm_v:0}} run data modify storage mineraft:tmp pt.h set value 4.5d
function mineraft:structure/crop_plot_large/drop_coconuts with storage mineraft:tmp pt
data modify entity @s data.fruit set value 0b
function mineraft:structure/crop_plot_large/tree
playsound minecraft:block.wood.hit block @a[distance=..10] ~ ~ ~ 1 0.7
