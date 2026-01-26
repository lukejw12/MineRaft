scoreboard players operation #smeltery_id mr.data = @s mr.smeltery_id


execute at @s run setblock ~ ~ ~ air
execute as @e[type=item_display,tag=mr.smeltery_display] at @s if score @s mr.smeltery_id = #smeltery_id mr.data if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run function mineraft:structures/smeltery/restore_wall_trapdoor
execute as @e[type=item_display,tag=mr.smeltery_display] if score @s mr.smeltery_id = #smeltery_id mr.data run kill @s
execute as @e[type=item_display,tag=mr.smeltery_fuel_display] if score @s mr.smeltery_id = #smeltery_id mr.data run kill @s

execute at @s run particle block{block_state:"minecraft:barrier"} ~ ~0.5 ~ 0.3 0.3 0.3 0 20
execute at @s run playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.8

data remove entity @s attack

kill @s