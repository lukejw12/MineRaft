scoreboard players operation #pt.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.tree,distance=..3] if score @s mr.id = #pt.id mr.data run data modify entity @s item.components."minecraft:item_model" set value "minecraft:air"
