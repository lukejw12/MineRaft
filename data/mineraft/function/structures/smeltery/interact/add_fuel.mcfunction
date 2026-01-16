data modify storage mineraft:smeltery fuel_item set from entity @s SelectedItem.id
execute store result score #fuel_value mr.data run function mineraft:structures/smeltery/references/fuel_lookup

execute as @e[tag=mr.target_smeltery] if score @s mr.smeltery_fuel matches ..199 run function mineraft:structures/smeltery/interact/do_add_fuel