data modify entity @s data.sail set value "closed"
scoreboard players set @s mr.timer 0
execute store result entity @s data.heading int 2 run data get entity @s data.mr.rot
scoreboard players operation #sa.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.part,distance=..3] if score @s mr.id = #sa.id mr.data run data merge entity @s {view_range:5f,teleport_duration:3}
