execute as @e[tag=mr.target_crop_plot] unless data entity @s {data:{state:"dry"}} run return fail

execute as @e[tag=mr.target_crop_plot] run data modify entity @s data.state set value "watered"
execute as @e[tag=mr.target_crop_plot] run scoreboard players set @s mr.purifier_fuel 4
execute as @e[tag=mr.target_crop_plot] run function mineraft:structures/crop_plot/advanced/small/models/plot/update

item replace entity @s weapon.mainhand with stone[!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.pail-empty:1b},item_model="mineraft:items/crafting_materials/cup/empty_cup"]

playsound minecraft:entity.generic.splash block @a ~ ~ ~ 1 1
particle minecraft:splash ~ ~1 ~ 0.3 0.3 0.3 0 10