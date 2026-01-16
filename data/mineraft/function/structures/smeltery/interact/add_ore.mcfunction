execute as @e[tag=mr.target_smeltery] unless data entity @s {data:{state:"idle"}} run return fail

data modify storage mineraft:smeltery smelt_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.smelt_type"

function mineraft:structures/smeltery/references/smeltables

execute as @e[tag=mr.target_smeltery] run data modify entity @s data.smelt_type set from storage mineraft:smeltery smelt_type
execute as @e[tag=mr.target_smeltery] run data modify entity @s data.output_item set from storage mineraft:smeltery output_item
execute as @e[tag=mr.target_smeltery] store result score @s mr.smeltery_max run data get storage mineraft:smeltery smelt_time
execute as @e[tag=mr.target_smeltery] run data modify entity @s data.state set value "smelting"

execute as @e[tag=mr.target_smeltery] if score @s mr.smeltery_fuel matches 1.. run function mineraft:structures/smeltery/model/update_model_active
execute as @e[tag=mr.target_smeltery] if score @s mr.smeltery_fuel matches ..0 run function mineraft:structures/smeltery/model/update_model_active_idle

item modify entity @s weapon.mainhand mineraft:remove_one

particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 20