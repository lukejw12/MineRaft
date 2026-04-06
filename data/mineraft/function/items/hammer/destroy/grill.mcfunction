scoreboard players operation #grill_id mr.data = @e[type=item_display,tag=mr.grill_display,distance=..2,limit=1,sort=nearest] mr.grill_id
execute as @e[type=interaction,tag=mr.grill_interaction] if score @s mr.grill_id = #grill_id mr.data at @s run function mineraft:structures/grill/core/destroy
execute as @e[type=interaction,tag=mr.grill_interaction] if score @s mr.grill_id = #grill_id mr.data run kill @s
scoreboard players set #hammer_hit mr.data 1
