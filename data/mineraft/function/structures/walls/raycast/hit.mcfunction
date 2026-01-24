scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:walls wall_type set from entity @s data.wall_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/walls/calculate_rotation

execute unless entity @e[type=item_display,tag=mr.foundation,distance=..2] unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run return run kill @s

execute as @e[type=item_display,tag=mr.foundation,distance=..2,limit=1,sort=nearest] at @s align xyz run function mineraft:structures/walls/snap_to_grid
execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s align xyz run function mineraft:structures/walls/snap_to_grid

kill @s