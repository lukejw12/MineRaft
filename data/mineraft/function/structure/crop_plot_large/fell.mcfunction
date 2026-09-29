data modify storage mineraft:tmp tr set value {}
data modify storage mineraft:tmp tr.seed set from entity @s data.seed_type
function mineraft:structure/crop_plot_large/loot_fell with storage mineraft:tmp tr
execute if data storage mineraft:tmp loot[0] as @a[tag=mr.interacting,limit=1] run function mineraft:structure/common/give_loot
playsound minecraft:block.wood.break block @a[distance=..10] ~ ~ ~ 1 0.6
function mineraft:structure/crop_plot_large/reset
