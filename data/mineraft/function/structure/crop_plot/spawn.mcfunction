data modify entity @s data.soil set value "dry"
data modify entity @s data.plot set from storage mineraft:tmp pl.def.plot
scoreboard players set @s mr.uses 0
scoreboard players operation #cp.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.crop,distance=..3] if score @s mr.id = #cp.id mr.data run function mineraft:structure/crop_plot/slot_reset
