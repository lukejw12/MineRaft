scoreboard players operation #crop_plot_id mr.data = @e[tag=mr.target_crop_plot,limit=1] mr.crop_plot_id

execute as @e[type=item_display,tag=mr.small_adv_crop_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data if data entity @s {data:{state:"stage3"}} run tag @s add mr.harvestable

execute unless entity @e[tag=mr.harvestable] run return fail

execute as @e[tag=mr.harvestable,limit=1,sort=nearest] run data modify storage mineraft:crop_plot seed_type set from entity @s data.seed_type

function mineraft:references/structures/crop_plot/small/loot

execute as @a[tag=mr.interacting] run function mineraft:core/give_item_loop

execute as @e[tag=mr.harvestable,limit=1,sort=nearest] run data modify entity @s data.state set value "empty"
execute as @e[tag=mr.harvestable,limit=1,sort=nearest] run data modify entity @s item.components.minecraft:item_model set value "minecraft:air"
execute as @e[tag=mr.harvestable,limit=1,sort=nearest] run scoreboard players set @s mr.crop_plot_timer 0

execute as @e[tag=mr.target_crop_plot] run scoreboard players remove @s mr.purifier_fuel 1

particle minecraft:block{block_state:"minecraft:oak_planks"} ~ ~1 ~ 0.3 0.5 0.3 0 5
playsound block.crop.break block @a[distance=..10] ~ ~ ~ 1 1

tag @e remove mr.harvestable

execute as @e[tag=mr.target_crop_plot] if score @s mr.purifier_fuel matches ..0 run function mineraft:structures/crop_plot/advanced/small/interaction/reset_plot