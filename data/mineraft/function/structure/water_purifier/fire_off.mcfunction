scoreboard players operation #wp.id mr.data = @s mr.id
execute as @e[type=text_display,tag=mr.p.fire,distance=..3] if score @s mr.id = #wp.id mr.data run kill @s
