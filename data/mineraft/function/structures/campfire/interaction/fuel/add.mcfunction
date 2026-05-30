execute store result score #fuel_value mr.data run function mineraft:references/core/fuel
execute as @e[tag=mr.target_campfire] if score @s mr.campfire_fuel matches ..299 run function mineraft:structures/campfire/interaction/fuel/do_add
