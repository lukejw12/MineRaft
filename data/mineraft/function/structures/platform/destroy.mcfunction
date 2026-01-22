

scoreboard players operation #platform_id mr.data = @s mr.platform_id
tag @s add mr.destroyed
execute positioned ~-1 ~ ~-1 run fill ~2 ~ ~2 ~ ~ ~ air replace barrier

execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] at @s run function mineraft:structures/platform/restore_wall_top
execute as @e[type=item_display,tag=mr.support_display,tag=mr.supporting_platform,distance=..3] at @s run function mineraft:structures/platform/restore_support_top

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~0.5 ~ 0.8 0.3 0.8 0.1 50 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

execute positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,tag=!mr.destroyed] at @s run function mineraft:structures/platform/check_supports
execute positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,tag=!mr.destroyed] at @s run function mineraft:structures/platform/check_supports
execute positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,tag=!mr.destroyed] at @s run function mineraft:structures/platform/check_supports
execute positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,tag=!mr.destroyed] at @s run function mineraft:structures/platform/check_supports

kill @s
execute unless entity @e[tag=mr.support] run say support gone -- destory