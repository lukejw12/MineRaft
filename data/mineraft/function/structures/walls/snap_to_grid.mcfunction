execute if data storage mineraft:walls {side:"north"} positioned ~ ~ ~-1 if entity @e[type=item_display,tag=mr.wall_display,dx=0,dy=0,dz=0] run return fail
execute if data storage mineraft:walls {side:"south"} positioned ~ ~ ~1 if entity @e[type=item_display,tag=mr.wall_display,dx=0,dy=0,dz=0] run return fail
execute if data storage mineraft:walls {side:"east"} positioned ~1 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,dx=0,dy=0,dz=0] run return fail
execute if data storage mineraft:walls {side:"west"} positioned ~-1 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,dx=0,dy=0,dz=0] run return fail

execute if data storage mineraft:walls {side:"north"} positioned ~ ~ ~-1 run function mineraft:structures/walls/spawn
execute if data storage mineraft:walls {side:"south"} positioned ~ ~ ~1 run function mineraft:structures/walls/spawn
execute if data storage mineraft:walls {side:"east"} positioned ~1 ~ ~ run function mineraft:structures/walls/spawn
execute if data storage mineraft:walls {side:"west"} positioned ~-1 ~ ~ run function mineraft:structures/walls/spawn

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.wall:1b}] 1