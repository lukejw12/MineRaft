scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:purifier purifier_type set from entity @s data.purifier_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/water_purifier/placement/calculate_rotation

execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.purifier_display,distance=..0.5] run return run kill @s
execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.smeltery_display,distance=..0.5] run return run kill @s

function mineraft:structures/water_purifier/placement/check_space with storage mineraft:purifier