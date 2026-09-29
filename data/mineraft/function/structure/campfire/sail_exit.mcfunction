scoreboard players operation #cf.id mr.data = @s mr.id
execute as @e[type=block_display,tag=mr.p.proxy,distance=..3] if score @s mr.id = #cf.id mr.data run kill @s
execute if score @s mr.fuel matches 1.. if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ minecraft:campfire[lit=true]
