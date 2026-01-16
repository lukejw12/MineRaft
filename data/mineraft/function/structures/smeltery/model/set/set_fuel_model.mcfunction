execute store result score #fuel mr.data run scoreboard players get @e[type=item_display,tag=mr.smeltery_display,sort=nearest,limit=1] mr.smeltery_fuel

execute if score #fuel mr.data matches 0 run data modify entity @s item.components.minecraft:item_model set value "minecraft:air"
execute if score #fuel mr.data matches 1..50 run data modify entity @s item.components.minecraft:item_model set value "mineraft:structures/core/fuel/sticks_1"
execute if score #fuel mr.data matches 51..100 run data modify entity @s item.components.minecraft:item_model set value "mineraft:structures/core/fuel/sticks_2"
execute if score #fuel mr.data matches 101..150 run data modify entity @s item.components.minecraft:item_model set value "mineraft:structures/core/fuel/sticks_3"
execute if score #fuel mr.data matches 151.. run data modify entity @s item.components.minecraft:item_model set value "mineraft:structures/core/fuel/sticks_4"