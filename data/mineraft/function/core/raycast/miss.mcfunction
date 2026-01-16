execute as @e[type=item_display,tag=mr.display] if score @s mr.link = @p mr.link run kill @s
kill @s
tag @a[tag=mr.place] remove mr.place


