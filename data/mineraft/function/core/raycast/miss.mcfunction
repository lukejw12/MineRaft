execute as @e[type=item_display,tag=mr.display] if score @s mr.link = @p mr.link run kill @s
execute as @e[type=item_display,tag=mr.net_preview] if score @s mr.link = @p mr.link run kill @s
kill @s
tag @a[tag=mr.place] remove mr.place
tag @a[tag=mr.place_net] remove mr.place_net