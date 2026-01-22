execute unless block ~1 ~ ~1 #air run return fail
execute unless block ~1 ~ ~ #air run return fail
execute unless block ~1 ~ ~-1 #air run return fail
execute unless block ~ ~ ~1 #air run return fail
execute unless block ~ ~ ~-1 #air run return fail
execute unless block ~-1 ~ ~1 #air run return fail
execute unless block ~-1 ~ ~ #air run return fail
execute unless block ~-1 ~ ~-1 #air run return fail

execute positioned ~ ~-2 ~ unless entity @e[type=item_display,tag=mr.support_display,distance=..1] run return fail

execute positioned ~ ~-2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1] if score @s mr.support_count matches 5.. run return fail

execute positioned ~ ~-2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1] run tag @s add mr.placing_platform
execute positioned ~ ~-2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1] at @s run tag @s add mr.supporting_platform

fill ~1 ~ ~1 ~-1 ~ ~-1 barrier replace air

function mineraft:structures/platform/spawn_display with storage mineraft:platform

execute as @e[type=item_display,tag=mr.new_platform,limit=1] run data modify entity @s data.platform_type set from storage mineraft:platform platform_type
execute as @e[type=item_display,tag=mr.new_platform,limit=1] store result score @s mr.platform_id run scoreboard players add #global mr.platform_id 1
execute as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players set @s mr.support_value 0
execute as @e[type=item_display,tag=mr.new_platform,limit=1] positioned ~ ~-2 ~ run scoreboard players operation @s mr.support_id = @e[type=item_display,tag=mr.support_display,distance=..1,limit=1] mr.support_id
execute as @e[type=item_display,tag=mr.new_platform,limit=1] run tag @s add mr.skip_check

execute positioned ~ ~-2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1] run scoreboard players add @s mr.support_count 1

tag @e[type=item_display,tag=mr.new_platform] remove mr.new_platform

execute as @e[type=item_display,tag=mr.wall_display,distance=..4] at @s run function mineraft:structures/platform/hide_wall_top

execute positioned ~ ~-2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1] run tag @s remove mr.placing_platform

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1