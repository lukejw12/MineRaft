scoreboard players remove @s mr.smeltery_progress 20

data modify storage mineraft:smeltery current_type set from entity @s data.smeltery_type
function mineraft:structures/smeltery/model/set/set_model_active with storage mineraft:smeltery

scoreboard players remove @s mr.smeltery_fuel 1

function mineraft:structures/smeltery/model/update_fuel_display

execute if score @s mr.smeltery_fuel matches 0 run function mineraft:structures/smeltery/model/update_model_active_idle

scoreboard players add @s mr.smelt_progress 1

execute if score @s mr.smelt_progress >= @s mr.smeltery_max run function mineraft:structures/smeltery/processing/finish_smelt
