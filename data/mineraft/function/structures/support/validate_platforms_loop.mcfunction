say Validation pass
scoreboard players set #platforms_destroyed mr.data 0

execute as @e[type=item_display,tag=mr.platform_display] if score @s mr.support_id = #support_id mr.data at @s run function mineraft:structures/platform/check_supports_mark

execute as @e[type=item_display,tag=mr.platform_display,tag=mr.no_support] at @s run function mineraft:structures/platform/destroy_no_cascade
execute as @e[type=item_display,tag=mr.platform_display,tag=mr.no_support] run scoreboard players set #platforms_destroyed mr.data 1

execute if score #platforms_destroyed mr.data matches 1 run function mineraft:structures/support/validate_platforms_loop