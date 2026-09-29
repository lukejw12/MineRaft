execute store result entity @s data.palm_v int 1 run random value 0..1
data modify entity @s data.fruit set value 1b
scoreboard players set @s mr.hits 0
scoreboard players set @s mr.max 3
execute if data entity @s {data:{palm_v:0}} run scoreboard players set @s mr.max 5
scoreboard players operation #pt.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.tree,distance=..3] if score @s mr.id = #pt.id mr.data store result entity @s Rotation[0] float 1 run random value 0..359
