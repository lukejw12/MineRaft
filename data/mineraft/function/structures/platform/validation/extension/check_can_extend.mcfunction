scoreboard players operation #check_support_id mr.data = @s mr.support_id
scoreboard players operation #source_support_id mr.data = @s mr.support_id

scoreboard players set #found_support mr.data 0
scoreboard players set #direction_available mr.data 0

execute as @e[type=item_display,tag=mr.support_display] if score @s mr.support_id = #check_support_id mr.data if score @s mr.support_count matches ..4 run scoreboard players set #found_support mr.data 1

execute if score #found_support mr.data matches 1 as @e[type=item_display,tag=mr.support_display] if score @s mr.support_id = #check_support_id mr.data run function mineraft:structures/platform/validation/extension/check_direction_free
execute if score #found_support mr.data matches 1 if score #direction_available mr.data matches 1 run scoreboard players set #has_support mr.data 1