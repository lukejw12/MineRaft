scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:net net_type set from entity @s data.net_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/collection_net/calculate_rotation

execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.foundation,dx=0,dy=0,dz=0] run return run kill @s
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=item_display,tag=mr.collection_net,dx=0,dy=0,dz=0] run return run kill @s

execute align xyz positioned ~0.5 ~ ~0.5 run function mineraft:structures/collection_net/spawn

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.collection_net:1b}] 1

kill @s