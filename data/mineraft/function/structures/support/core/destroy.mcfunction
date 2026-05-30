function mineraft:core/break_structure
execute positioned ~ ~2 ~ as @e[type=item_display,tag=mr.platform_display,distance=..1,limit=1] at @s run setblock ~ ~ ~ barrier
execute positioned ~ ~ ~ run setblock ~ ~ ~ air
execute positioned ~ ~1 ~ run setblock ~ ~ ~ air
execute positioned ~ ~2 ~ run setblock ~ ~ ~ air
execute positioned ~ ~2 ~ as @e[type=item_display,tag=mr.platform_display,distance=..1,limit=1] at @s run setblock ~ ~ ~ barrier


execute at @s run function mineraft:grid/support/unregister

execute at @s run function mineraft:grid/block/release_at_pos

kill @s

execute positioned ~ ~2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1,sort=nearest] at @s run function mineraft:structures/support/core/destroy

tag @e[type=item_display,tag=mr.platform_display] remove mr.supported
tag @e[type=item_display,tag=mr.platform_display] remove mr.checked

execute as @e[type=item_display,tag=mr.platform_display] at @s positioned ~ ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run tag @s add mr.supported

execute as @e[type=item_display,tag=mr.platform_display] at @s if entity @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run tag @s add mr.supported

function mineraft:structures/support/validation/propagation/propagate

execute as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported] at @s run function mineraft:structures/platform/core/destruction/destroy_no_cascade

tag @e[type=item_display,tag=mr.platform_display] remove mr.supported
tag @e[type=item_display,tag=mr.platform_display] remove mr.checked
