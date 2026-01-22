$scoreboard players set #new_support_value mr.data $(dir)
scoreboard players operation #check_support_id mr.data = @s mr.support_id
scoreboard players operation #source_support_id mr.data = @s mr.support_id
execute as @e[type=item_display,tag=mr.support_display] if score @s mr.support_id = #check_support_id mr.data if score @s mr.support_count matches ..4 run scoreboard players set #has_support mr.data 1