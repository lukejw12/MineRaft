execute on target run tag @s add mr.net_emptying

execute as @e[type=item_display,tag=mr.net_display] if score @s mr.net_id = @e[type=interaction,tag=mr.net_interaction,sort=nearest,limit=1] mr.net_id run function mineraft:structures/collection_net/interaction/empty
execute on target if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] as @e[type=item_display,tag=mr.net_display] if score @s mr.net_id = @e[type=interaction,tag=mr.net_interaction,sort=nearest,limit=1] mr.net_id run function mineraft:structures/collection_net/core/destruction/destroy

execute on target run tag @s remove mr.net_emptying
data remove entity @s interaction
