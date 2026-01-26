data modify storage mineraft:purifier fuel_item set from entity @s SelectedItem.id

execute store result score #fuel_value mr.data run function mineraft:structures/smeltery/references/fuel_lookup

execute as @e[tag=mr.target_purifier] if score @s mr.purifier_fuel matches ..199 run function mineraft:structures/water_purifier/interaction/fuel/do_add