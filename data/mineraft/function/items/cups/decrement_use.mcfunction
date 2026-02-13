execute store result storage mineraft:cup new_uses int 1 run scoreboard players get #filled_uses mr.data
data modify storage mineraft:cup cup_name set from entity @s SelectedItem.components.minecraft:custom_data."mr.cup_name"
function mineraft:references/items/cups/uses
execute store result score #max_uses mr.data run data get storage mineraft:cup max_uses
scoreboard players operation #damage mr.data = #filled_uses mr.data
scoreboard players operation #damage mr.data *= #100 mr.const
scoreboard players operation #damage mr.data /= #max_uses mr.data
scoreboard players set #max_dam mr.data 100
scoreboard players operation #damage mr.data -= #max_dam mr.data
scoreboard players operation #damage mr.data *= #-1 mr.const
execute store result storage mineraft:cup damage int 1 run scoreboard players get #damage mr.data
execute if data storage mineraft:cup {water_type:"saltwater"} run data modify storage mineraft:cup water_name set value "Saltwater"
execute if data storage mineraft:cup {water_type:"freshwater"} run data modify storage mineraft:cup water_name set value "Freshwater"
function mineraft:items/cups/rebuild_item with storage mineraft:cup