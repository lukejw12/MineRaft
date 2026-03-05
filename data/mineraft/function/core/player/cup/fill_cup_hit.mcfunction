execute as @a[tag=mr.fill_water,limit=1] if items entity @s weapon.mainhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"freshwater"}] run tag @s remove mr.fill_water
execute as @a[tag=mr.fill_water,limit=1] if items entity @s weapon.offhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"freshwater"}] run tag @s remove mr.fill_water
execute unless entity @a[tag=mr.fill_water] run return run kill @s
data modify storage mineraft:cup cup_type set value "cup"
data modify storage mineraft:cup cup_name set value "Cup"
execute if items entity @a[tag=mr.fill_water,limit=1] weapon.mainhand *[custom_data~{mr.cup_type:"canteen"}] run data modify storage mineraft:cup cup_type set value "canteen"
execute if items entity @a[tag=mr.fill_water,limit=1] weapon.mainhand *[custom_data~{mr.cup_type:"canteen"}] run data modify storage mineraft:cup cup_name set value "Canteen"
execute if items entity @a[tag=mr.fill_water,limit=1] weapon.mainhand *[custom_data~{mr.cup_type:"bottle"}] run data modify storage mineraft:cup cup_type set value "bottle"
execute if items entity @a[tag=mr.fill_water,limit=1] weapon.mainhand *[custom_data~{mr.cup_type:"bottle"}] run data modify storage mineraft:cup cup_name set value "Bottle"
data modify storage mineraft:cup water_type set value "saltwater"
function mineraft:references/items/cups/uses
execute store result score #max_uses mr.data run data get storage mineraft:cup max_uses
execute store result score #current_uses mr.data run data get entity @a[tag=mr.fill_water,limit=1] SelectedItem.components.minecraft:custom_data."mr.filled_uses"
execute if score #current_uses mr.data >= #max_uses mr.data run tag @a[tag=mr.fill_water] remove mr.fill_water
execute if score #current_uses mr.data >= #max_uses mr.data run return run kill @s
scoreboard players add #current_uses mr.data 1
execute store result storage mineraft:cup new_uses int 1 run scoreboard players get #current_uses mr.data
scoreboard players operation #damage mr.data = #current_uses mr.data
scoreboard players operation #damage mr.data *= #100 mr.const
scoreboard players operation #damage mr.data /= #max_uses mr.data
scoreboard players set #max_dam mr.data 100
scoreboard players operation #damage mr.data -= #max_dam mr.data
scoreboard players operation #damage mr.data *= #-1 mr.const
execute store result storage mineraft:cup damage int 1 run scoreboard players get #damage mr.data
function mineraft:references/items/cups/filled_model
function mineraft:items/cups/fill_hand with storage mineraft:cup
particle splash ~ ~ ~ 0.2 0.2 0.2 0 10
tag @a[tag=mr.fill_water] remove mr.fill_water
kill @s