execute unless data entity @s {data:{soil:"dry"}} run return fail
data modify entity @s data.soil set value "moist"
scoreboard players set @s mr.uses 3
function mineraft:structure/crop_plot/plot_model with entity @s data
execute as @a[tag=mr.interacting,limit=1] run function mineraft:item/cup/use_water
playsound minecraft:entity.generic.splash block @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.3 0.3 0.3 0 10
