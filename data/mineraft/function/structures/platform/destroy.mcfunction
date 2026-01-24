scoreboard players operation #platform_id mr.data = @s mr.platform_id
scoreboard players operation #destroying_support_id mr.data = @s mr.support_id
tag @s add mr.destroyed
execute positioned ~-1 ~ ~-1 run fill ~2 ~ ~2 ~ ~ ~ air replace barrier

execute as @e[type=item_display,tag=mr.support_display] if score @s mr.support_id = #destroying_support_id mr.data run scoreboard players remove @s mr.support_count 1

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~0.5 ~ 0.8 0.3 0.8 0.1 50 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

execute positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,tag=!mr.destroyed] at @s run function mineraft:structures/platform/check_supports
execute positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,tag=!mr.destroyed] at @s run function mineraft:structures/platform/check_supports
execute positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,tag=!mr.destroyed] at @s run function mineraft:structures/platform/check_supports
execute positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,tag=!mr.destroyed] at @s run function mineraft:structures/platform/check_supports

execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run tag @s add mr.needs_restore_check
execute if entity @e[type=item_display,tag=mr.needs_restore_check] run schedule function mineraft:structures/platform/delayed_restore_walls 2t append

kill @s