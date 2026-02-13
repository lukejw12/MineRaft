execute as @e[tag=mr.target_crop_plot] unless data entity @s {data:{state:"watered"}} unless data entity @s {data:{state:"dry"}} run return fail

scoreboard players operation #crop_plot_id mr.data = @e[tag=mr.target_crop_plot,limit=1] mr.crop_plot_id

execute as @e[type=item_display,tag=mr.small_crop_display,tag=mr.crop_1] if score @s mr.crop_plot_id = #crop_plot_id mr.data if data entity @s {data:{state:"empty"}} run tag @s add mr.available_slot
execute unless entity @e[tag=mr.available_slot] as @e[type=item_display,tag=mr.small_crop_display,tag=mr.crop_2] if score @s mr.crop_plot_id = #crop_plot_id mr.data if data entity @s {data:{state:"empty"}} run tag @s add mr.available_slot
execute unless entity @e[tag=mr.available_slot] as @e[type=item_display,tag=mr.small_crop_display,tag=mr.crop_3] if score @s mr.crop_plot_id = #crop_plot_id mr.data if data entity @s {data:{state:"empty"}} run tag @s add mr.available_slot

execute unless entity @e[tag=mr.available_slot] run return fail

function mineraft:references/structures/crop_plot/small/seedlings

execute as @e[tag=mr.available_slot] run data modify entity @s data.seed_type set from storage mineraft:crop_plot seed_type
execute as @e[tag=mr.available_slot] run data modify entity @s data.state set value "stage0"
execute as @e[tag=mr.available_slot] run scoreboard players set @s mr.crop_plot_timer 0
execute as @e[tag=mr.available_slot] run function mineraft:structures/crop_plot/basic/small/models/crop/update

item modify entity @s weapon.mainhand mineraft:remove_one

playsound minecraft:block.grass.place block @a ~ ~ ~ 1 1

tag @e remove mr.available_slot