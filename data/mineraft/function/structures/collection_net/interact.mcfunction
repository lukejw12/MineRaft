execute on attacker run tag @s add mr.net_emptying

execute as @e[type=item_display,tag=mr.net_display] if score @s mr.net_id = @e[type=interaction,tag=mr.net_interaction,sort=nearest,limit=1] mr.net_id run function mineraft:structures/collection_net/empty

data remove entity @s interaction
tag @a remove mr.net_emptying