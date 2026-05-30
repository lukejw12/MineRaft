scoreboard players operation #player_link mr.data = @s mr.link
execute as @e[type=item_display,tag=mr.campfire_preview] if score @s mr.link = #player_link mr.data run kill @s
execute as @e[type=block_display,tag=mr.campfire_block_preview] run kill @s
