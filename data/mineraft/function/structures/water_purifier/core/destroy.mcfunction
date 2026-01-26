scoreboard players operation #purifier_id mr.data = @s mr.purifier_id

execute if entity @s[tag=mr.block_0] at @s run setblock ~ ~ ~ air
execute if entity @s[tag=mr.block_1] as @e[type=item_display,tag=mr.purifier_display] if score @s mr.purifier_id = #purifier_id mr.data at @s run setblock ~ ~ ~ air

execute as @e[type=item_display,tag=mr.purifier_display] if score @s mr.purifier_id = #purifier_id mr.data at @s run function mineraft:structures/water_purifier/core/destroy_linked