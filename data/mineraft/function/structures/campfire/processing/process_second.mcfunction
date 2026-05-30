scoreboard players remove @s mr.campfire_progress 20
scoreboard players remove @s mr.campfire_fuel 1
execute if score @s mr.campfire_fuel matches 0 at @s run setblock ~ ~ ~ campfire[lit=false]
execute if data entity @s data.slot1 unless data entity @s data.slot1{done:1b} run function mineraft:structures/campfire/processing/cook_slot1
execute if data entity @s data.slot2 unless data entity @s data.slot2{done:1b} run function mineraft:structures/campfire/processing/cook_slot2
execute if data entity @s data.slot3 unless data entity @s data.slot3{done:1b} run function mineraft:structures/campfire/processing/cook_slot3
execute if data entity @s data.slot4 unless data entity @s data.slot4{done:1b} run function mineraft:structures/campfire/processing/cook_slot4
