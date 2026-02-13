scoreboard players add @s mr.crop_plot_hits 1

function mineraft:references/structures/crop_plot/large/loot

scoreboard players set #loot_index mr.data 0
execute store result score #loot_count mr.data run data get storage mineraft:crop_plot loot
function mineraft:structures/crop_plot/basic/large/interaction/give_loop

execute if score @s mr.crop_plot_hits matches 5.. run function mineraft:structures/crop_plot/basic/large/interaction/reset

particle minecraft:block{block_state:"minecraft:oak_planks"} ~ ~2 ~ 0.3 0.5 0.3 0 5
playsound block.wood.break block @a[distance=..10] ~ ~ ~ 1 1