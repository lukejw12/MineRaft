data modify storage mineraft:purifier block1_offset_x set from entity @s data.block1_offset_x
data modify storage mineraft:purifier block1_offset_z set from entity @s data.block1_offset_z

execute at @s run setblock ~ ~ ~ air
function mineraft:structures/water_purifier/utils/blocks/remove_block1 with storage mineraft:purifier
execute as @e[type=item_display,tag=mr.purifier_display] at @s if score @s mr.purifier_id = #purifier_id mr.data if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run function mineraft:structures/water_purifier/utils/restore/wall_trapdoor

execute as @e[type=item_display,tag=mr.purifier_fuel_display] if score @s mr.purifier_id = #purifier_id mr.data run kill @s
execute as @e[type=interaction,tag=mr.purifier_interaction] if score @s mr.purifier_id = #purifier_id mr.data run kill @s

particle block{block_state:"minecraft:barrier"} ~ ~0.5 ~ 0.3 0.3 0.3 0 20
playsound minecraft:block.stone.break block @a ~ ~ ~ 1 0.8

kill @s