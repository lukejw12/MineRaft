execute store result score #fuel mr.data run data get entity @s SelectedItem.components."minecraft:custom_data"."mr.fuel_time"
data modify storage mineraft:tmp fuel_style set value "wood"
data modify storage mineraft:tmp fuel_style set from entity @s SelectedItem.components."minecraft:custom_data"."mr.fuel_style"
