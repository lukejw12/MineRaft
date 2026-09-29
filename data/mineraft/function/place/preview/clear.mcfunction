scoreboard players operation #pv.link mr.data = @s mr.link
execute as @e[type=item_display,tag=mr.preview] if score @s mr.link = #pv.link mr.data run kill @s
tag @s remove mr.has_preview
