data modify entity @s data.fuel_style set from storage mineraft:tmp fuel_style
scoreboard players operation @s mr.fuel += #fuel mr.data
function mineraft:structure/common/fuel_shown
