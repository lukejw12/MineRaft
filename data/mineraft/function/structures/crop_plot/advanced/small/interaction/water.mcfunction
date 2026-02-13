execute as @e[tag=mr.target_crop_plot] unless data entity @s {data:{state:"dry"}} run return fail

execute as @e[tag=mr.target_crop_plot] run data modify entity @s data.state set value "watered"
execute as @e[tag=mr.target_crop_plot] run scoreboard players set @s mr.purifier_fuel 4
execute as @e[tag=mr.target_crop_plot] run function mineraft:structures/crop_plot/advanced/small/models/plot/update

function mineraft:items/cups/use_water

playsound minecraft:entity.generic.splash block @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.3 0.3 0.3 0 10