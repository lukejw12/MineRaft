scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:purifier purifier_type set from entity @s data.purifier_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/water_purifier/calculate_rotation

execute align xyz positioned ~ ~1 ~ if entity @e[type=item_display,tag=mr.purifier,dx=0,dy=0,dz=0] run return run kill @s

function mineraft:structures/water_purifier/check_space with storage mineraft:purifier