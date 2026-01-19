scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:walls wall_type set from entity @s data.wall_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/walls/calculate_rotation

execute align xyz if entity @e[type=item_display,tag=mr.wall_display,dx=0,dy=0,dz=0] run return run kill @s

execute align xyz run function mineraft:structures/walls/spawn

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.wall:1b}] 1

kill @s