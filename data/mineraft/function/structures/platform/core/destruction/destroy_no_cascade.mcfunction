function mineraft:core/break_structure
scoreboard players operation #platform_id mr.data = @s mr.platform_id
scoreboard players operation #destroying_support_id mr.data = @s mr.support_id
tag @s add mr.destroyed
execute positioned ~-1 ~ ~-1 run fill ~2 ~ ~2 ~ ~ ~ air replace barrier

execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] at @s run function mineraft:structures/platform/utils/wall_interaction/restore_top
execute as @e[type=item_display,tag=mr.support_display,tag=mr.supporting_platform,distance=..3] at @s run function mineraft:structures/platform/utils/support_interaction/restore_top

execute as @e[type=item_display,tag=mr.support_display] if score @s mr.support_id = #destroying_support_id mr.data run scoreboard players remove @s mr.support_count 1

execute positioned ~0.5 ~ ~0.5 as @e[type=item_display,tag=mr.surface,distance=..10,limit=1,sort=nearest] run function mineraft:grid/support/remove_platform


kill @s