scoreboard players remove @s mr.progress 20
scoreboard players remove @s mr.fuel 1
function mineraft:structure/common/fuel_shown
execute if score @s mr.fuel matches 0 run function mineraft:structure/smelter/model/active_idle
scoreboard players add @s mr.count 1
function mineraft:structure/smelter/content
execute if score @s mr.count >= @s mr.max run function mineraft:structure/smelter/finish
