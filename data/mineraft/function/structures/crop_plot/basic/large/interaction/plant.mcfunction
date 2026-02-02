execute as @e[tag=mr.target_crop_plot] unless data entity @s {data:{state:"empty"}} run return fail

function mineraft:structures/crop_plot/basic/large/references/seedlings

execute as @e[tag=mr.target_crop_plot] run data modify entity @s data.seed_type set from storage mineraft:crop_plot seed_type
execute as @e[tag=mr.target_crop_plot] run data modify entity @s data.state set value "sapling"
execute as @e[tag=mr.target_crop_plot] run scoreboard players set @s mr.crop_plot_timer 0
execute as @e[tag=mr.target_crop_plot] run function mineraft:structures/crop_plot/basic/large/models/update

item modify entity @s weapon.mainhand mineraft:remove_one

playsound minecraft:block.grass.place block @a ~ ~ ~ 1 1