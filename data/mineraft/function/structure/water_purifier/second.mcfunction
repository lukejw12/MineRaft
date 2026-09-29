scoreboard players remove @s mr.timer 20
scoreboard players remove @s mr.fuel 1
function mineraft:structure/common/fuel_shown
execute if score @s mr.fuel matches 0 run function mineraft:structure/water_purifier/fire_off
scoreboard players add @s mr.progress 1
execute if score @s mr.progress matches 30.. run function mineraft:structure/water_purifier/finish
