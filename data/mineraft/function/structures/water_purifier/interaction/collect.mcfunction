execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"saltwater"}] run return fail
execute as @a[tag=mr.interacting] if items entity @s weapon.offhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"saltwater"}] run return fail
data modify storage mineraft:cup cup_type set from entity @a[tag=mr.interacting,limit=1] SelectedItem.components.minecraft:custom_data."mr.cup_type"
data modify storage mineraft:cup cup_name set from entity @a[tag=mr.interacting,limit=1] SelectedItem.components.minecraft:custom_data."mr.cup_name"
data modify storage mineraft:cup water_type set value "freshwater"
function mineraft:references/items/cups/uses
function mineraft:references/items/cups/filled_model
execute store result score #current_uses mr.data run data get entity @a[tag=mr.interacting,limit=1] SelectedItem.components.minecraft:custom_data."mr.filled_uses"
execute store result score #max_uses mr.data run data get storage mineraft:cup max_uses
execute if score #current_uses mr.data >= #max_uses mr.data run return fail
scoreboard players add #current_uses mr.data 1
execute store result storage mineraft:cup new_uses int 1 run scoreboard players get #current_uses mr.data
scoreboard players operation #damage mr.data = #current_uses mr.data
scoreboard players operation #damage mr.data *= #100 mr.const
scoreboard players operation #damage mr.data /= #max_uses mr.data
scoreboard players set #max_dam mr.data 100
scoreboard players operation #damage mr.data -= #max_dam mr.data
scoreboard players operation #damage mr.data *= #-1 mr.const
execute store result storage mineraft:cup damage int 1 run scoreboard players get #damage mr.data
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.pail-empty:1b}] run function mineraft:items/cups/purifier_collect_main with storage mineraft:cup
execute as @a[tag=mr.interacting] if items entity @s weapon.offhand *[custom_data~{mr.pail-empty:1b}] run function mineraft:items/cups/purifier_collect_off with storage mineraft:cup
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"freshwater"}] run function mineraft:items/cups/purifier_collect_main with storage mineraft:cup
execute as @a[tag=mr.interacting] if items entity @s weapon.offhand *[custom_data~{mr.filled_cup:1b,mr.water_type:"freshwater"}] run function mineraft:items/cups/purifier_collect_off with storage mineraft:cup
data modify entity @s data.state set value "idle"
function mineraft:structures/water_purifier/models/idle/update
playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1