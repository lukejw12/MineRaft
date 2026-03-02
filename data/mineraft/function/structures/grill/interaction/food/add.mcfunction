execute as @e[tag=mr.target_grill] unless data entity @s {data:{state:"idle"}} run return fail
data modify storage mineraft:grill grill_recipe set from entity @s SelectedItem.components.minecraft:custom_data."mr.grill_type"
function mineraft:references/core/grillables
execute as @e[tag=mr.target_grill] run data modify entity @s data.grill_recipe set from storage mineraft:grill grill_recipe
execute as @e[tag=mr.target_grill] run data modify entity @s data.output_type set from storage mineraft:grill output_type
execute as @e[tag=mr.target_grill] store result score @s mr.grill_max run data get storage mineraft:grill grill_time
execute as @e[tag=mr.target_grill] run data modify entity @s data.state set value "grilling"
item modify entity @s weapon.mainhand mineraft:remove_one
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 20