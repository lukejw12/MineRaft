execute as @e[tag=mr.target_crop_plot] unless data entity @s {data:{state:"sapling"}} run return fail

execute as @e[tag=mr.target_crop_plot] run data modify entity @s data.state set value "sapling_watered"
execute as @e[tag=mr.target_crop_plot] run scoreboard players set @s mr.crop_plot_timer 0
execute as @e[tag=mr.target_crop_plot] run function mineraft:structures/crop_plot/shared/large/models/update

function mineraft:items/cups/use_water

playsound minecraft:entity.generic.splash block @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.3 0.3 0.3 0 10
