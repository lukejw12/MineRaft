scoreboard players operation #wl.id mr.data = @s mr.id
execute as @e[type=item_display,tag=mr.p.pillar,distance=..6] if score @s mr.id = #wl.id mr.data run kill @s
execute as @e[type=item_display,tag=mr.p.pillar,distance=..6] if score @s mr.link_b = #wl.id mr.data run kill @s
execute as @e[type=item_display,tag=mr.t.wall,tag=!mr.breaking,distance=..5] at @s run function mineraft:structure/wall/corners
