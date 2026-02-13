data modify storage mineraft:cup cup_type set from entity @a[tag=mr.fill_water,sort=nearest,limit=1] SelectedItem.components.minecraft:custom_data."mr.cup_type"
data modify storage mineraft:cup water_type set value "saltwater"
function mineraft:references/items/cups/uses
execute store result storage mineraft:cup new_uses int 1 run data get storage mineraft:cup max_uses
function mineraft:items/cups/fill_hand with storage mineraft:cup

particle splash ~ ~ ~ 0.2 0.2 0.2 0 10
tag @a[tag=mr.fill_water,sort=nearest] remove mr.fill_water
kill @s