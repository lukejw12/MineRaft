execute as @e[tag=mr.target_campfire] if score @s mr.campfire_slots matches 4.. run return fail
data modify storage mineraft:campfire recipe set from entity @s SelectedItem.components.minecraft:custom_data."mr.grill_type"
function mineraft:references/core/grillables
execute as @e[tag=mr.target_campfire] unless data entity @s data.slot1 run return run function mineraft:structures/campfire/interaction/food/fill_slot1
execute as @e[tag=mr.target_campfire] unless data entity @s data.slot2 run return run function mineraft:structures/campfire/interaction/food/fill_slot2
execute as @e[tag=mr.target_campfire] unless data entity @s data.slot3 run return run function mineraft:structures/campfire/interaction/food/fill_slot3
execute as @e[tag=mr.target_campfire] unless data entity @s data.slot4 run return run function mineraft:structures/campfire/interaction/food/fill_slot4
