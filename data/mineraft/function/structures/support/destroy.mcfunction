scoreboard players operation #destroyed_support_id mr.data = @s mr.support_id

execute positioned ~ ~ ~ run setblock ~ ~ ~ air
execute positioned ~ ~1 ~ run setblock ~ ~ ~ air
execute positioned ~ ~2 ~ run setblock ~ ~ ~ air

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~1 ~ 0.3 0.5 0.3 0.1 50 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

kill @s

execute positioned ~ ~2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1,sort=nearest] at @s run function mineraft:structures/support/destroy

tag @e[type=item_display,tag=mr.platform_display] remove mr.supported
tag @e[type=item_display,tag=mr.platform_display] remove mr.checked

execute as @e[type=item_display,tag=mr.platform_display] at @s positioned ~ ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run tag @s add mr.supported

execute as @e[type=item_display,tag=mr.platform_display] at @s if entity @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run tag @s add mr.supported

function mineraft:structures/support/propagate_support

execute as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported] at @s run function mineraft:structures/platform/destroy_no_cascade

tag @e[type=item_display,tag=mr.platform_display] remove mr.supported
tag @e[type=item_display,tag=mr.platform_display] remove mr.checked