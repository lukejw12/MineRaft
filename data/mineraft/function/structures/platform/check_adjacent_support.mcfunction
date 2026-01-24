$scoreboard players set #check_dir mr.data $(dir)

scoreboard players operation #check_support_id mr.data = @s mr.support_id

execute as @e[type=item_display,tag=mr.support_display] if score @s mr.support_id = #check_support_id mr.data if score @s mr.support_count matches ..4 run function mineraft:structures/platform/set_adjacent_support