scoreboard players remove @s mr.progress 20
scoreboard players remove @s mr.fuel 1
function mineraft:structure/common/fuel_display {style:"sticks"}
scoreboard players add @s mr.count 1
execute if score @s mr.count >= @s mr.max run function mineraft:structure/grill/finish
