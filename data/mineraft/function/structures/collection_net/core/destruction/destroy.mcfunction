scoreboard players operation #net_id mr.data = @s mr.net_id

execute as @e[type=item_display,tag=mr.net_item_display] if score @s mr.net_id = #net_id mr.data run kill @s
execute as @e[type=interaction,tag=mr.net_interaction] if score @s mr.net_id = #net_id mr.data run kill @s

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~1 ~ 0.5 0 0.5 0.1 100 normal
fill ~1 62 ~1 ~-1 61 ~-1 water

kill @s