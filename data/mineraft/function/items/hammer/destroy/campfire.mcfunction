scoreboard players operation #campfire_id mr.data = @e[type=item_display,tag=mr.campfire_display,distance=..2,limit=1,sort=nearest] mr.campfire_id
execute as @e[type=interaction,tag=mr.campfire_interaction] if score @s mr.campfire_id = #campfire_id mr.data at @s run function mineraft:structures/campfire/core/destroy
execute as @e[type=interaction,tag=mr.campfire_interaction] if score @s mr.campfire_id = #campfire_id mr.data run kill @s
scoreboard players set #hammer_hit mr.data 1
