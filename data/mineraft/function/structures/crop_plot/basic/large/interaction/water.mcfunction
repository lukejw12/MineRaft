execute as @e[tag=mr.target_crop_plot] unless data entity @s {data:{state:"sapling"}} run return fail

execute as @e[tag=mr.target_crop_plot] run data modify entity @s data.state set value "sapling_watered"
execute as @e[tag=mr.target_crop_plot] run scoreboard players set @s mr.crop_plot_timer 0
execute as @e[tag=mr.target_crop_plot] run function mineraft:structures/crop_plot/basic/large/models/update

item replace entity @s weapon.mainhand with stone[!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.pail-empty:1b},item_model="mineraft:items/crafting_materials/cup/empty_cup"]

playsound minecraft:entity.generic.splash block @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.3 0.3 0.3 0 10