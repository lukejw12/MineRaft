scoreboard players add @s mr.hits 1
execute if score @s mr.hits >= @s mr.max run return run function mineraft:structure/crop_plot_large/fell
scoreboard players operation #pt.i mr.data = @s mr.hits
scoreboard players operation #pt.i mr.data %= #3 mr.const
data modify storage mineraft:tmp tr set value {}
data modify storage mineraft:tmp tr.seed set from entity @s data.seed_type
execute store result storage mineraft:tmp tr.i int 1 run scoreboard players get #pt.i mr.data
function mineraft:structure/crop_plot_large/loot with storage mineraft:tmp tr
execute if data storage mineraft:tmp loot[0] as @a[tag=mr.interacting,limit=1] run function mineraft:structure/common/give_loot
scoreboard players remove #pt.pow mr.data 1
execute if score #pt.pow mr.data matches 1.. run function mineraft:structure/crop_plot_large/chop
