advancement revoke @s only mineraft:items/cup/use_filled_cup
data modify storage mineraft:cup cup_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.cup_type"
data modify storage mineraft:cup water_type set from entity @s SelectedItem.components.minecraft:custom_data."mr.water_type"
execute store result score #filled_uses mr.data run data get entity @s SelectedItem.components.minecraft:custom_data."mr.filled_uses"
scoreboard players remove #filled_uses mr.data 1
execute if score #filled_uses mr.data matches ..0 run function mineraft:items/cups/swap_empty
execute if score #filled_uses mr.data matches 1.. run function mineraft:items/cups/decrement_use