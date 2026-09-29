function mineraft:structure/spawn/part_data
scoreboard players set #pv.found mr.data 0
execute as @e[type=item_display,tag=mr.preview] if score @s mr.link = #pv.link mr.data if score @s mr.pidx = #pv.i mr.data run scoreboard players set #pv.found mr.data 1
execute if score #pv.found mr.data matches 0 run function mineraft:place/preview/create
execute as @e[type=item_display,tag=mr.preview] if score @s mr.link = #pv.link mr.data if score @s mr.pidx = #pv.i mr.data run function mineraft:place/preview/update with storage mineraft:tmp p
