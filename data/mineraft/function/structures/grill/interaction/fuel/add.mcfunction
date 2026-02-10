data modify storage mineraft:grill fuel_item set from entity @s SelectedItem.id
execute store result score #fuel_value mr.data run function mineraft:structures/smeltery/references/fuel_lookup
execute as @e[tag=mr.target_grill] if score @s mr.grill_fuel matches ..199 run function mineraft:structures/grill/interaction/fuel/do_add