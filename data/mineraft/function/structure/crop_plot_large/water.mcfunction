execute unless data entity @s {data:{state:"sapling"}} run return fail
data modify entity @s data.state set value "sapling_watered"
scoreboard players set @s mr.timer 0
function mineraft:structure/crop_plot_large/model
execute as @a[tag=mr.interacting,limit=1] run function mineraft:item/cup/use_water
playsound minecraft:entity.generic.splash block @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.3 0.3 0.3 0 10
