tag @s add mr.destroying
tag @s add mr.destroyed

scoreboard players operation #wall_id mr.data = @s mr.wall_id

execute as @e[type=item_display,tag=mr.wall_pillar] if score @s mr.wall_id = #wall_id mr.data run kill @s
execute as @e[type=item_display,tag=mr.wall_pillar] if score @s mr.wall_id2 = #wall_id mr.data run kill @s

data modify storage mineraft:walls destroy_side set from entity @s data.side

function mineraft:structures/walls/remove_trapdoors with storage mineraft:walls

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~2 ~ 0.5 0.5 0.5 0.1 100 normal

execute if entity @s[tag=mr.supporting_platform] positioned ~ ~2 ~ as @e[type=item_display,tag=mr.platform_display,distance=..2] at @s run function mineraft:structures/platform/check_supports
execute if entity @s[tag=mr.supporting_platform] positioned ~ ~2 ~ as @e[type=item_display,tag=mr.platform_display,distance=..2] run tag @s add mr.needs_barrier_restore
execute if entity @e[type=item_display,tag=mr.needs_barrier_restore] run schedule function mineraft:structures/walls/delayed_restore_barriers 1t append

kill @s

execute as @e[type=item_display,tag=mr.wall_display,distance=..5] at @s run function mineraft:structures/walls/check_corners