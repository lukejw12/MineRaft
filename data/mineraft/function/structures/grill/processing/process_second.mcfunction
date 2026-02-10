scoreboard players remove @s mr.grill_progress 20
scoreboard players remove @s mr.grill_fuel 1
function mineraft:structures/grill/models/fuel/update
scoreboard players add @s mr.grill_cook 1
execute if score @s mr.grill_cook >= @s mr.grill_max run function mineraft:structures/grill/processing/finish_grill