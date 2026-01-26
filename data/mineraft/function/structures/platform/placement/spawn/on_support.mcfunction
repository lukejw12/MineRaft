execute unless block ~1 ~ ~1 #mineraft:platform-override run return fail
execute unless block ~1 ~ ~ #mineraft:platform-override run return fail
execute unless block ~1 ~ ~-1 #mineraft:platform-override run return fail
execute unless block ~ ~ ~1 #mineraft:platform-override run return fail
execute unless block ~ ~ ~-1 #mineraft:platform-override run return fail
execute unless block ~-1 ~ ~1 #mineraft:platform-override run return fail
execute unless block ~-1 ~ ~ #mineraft:platform-override run return fail
execute unless block ~-1 ~ ~-1 #mineraft:platform-override run return fail

execute positioned ~ ~-2 ~ unless entity @e[type=item_display,tag=mr.support_display,distance=..1] run return fail
execute as @e[type=item_display,tag=mr.wall_display,distance=..4] at @s run function mineraft:structures/platform/utils/wall_interaction/hide_top

function mineraft:structures/platform/placement/models/get_model

fill ~1 ~ ~1 ~-1 ~ ~-1 barrier replace air

function mineraft:structures/platform/placement/spawn/display with storage mineraft:platform
execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.platform:1b}] 1

execute as @e[type=item_display,tag=mr.new_platform,limit=1] run data modify entity @s data.platform_type set from storage mineraft:platform platform_type
execute as @e[type=item_display,tag=mr.new_platform,limit=1] store result score @s mr.platform_id run scoreboard players add #global mr.platform_id 1
execute as @e[type=item_display,tag=mr.new_platform,limit=1] run tag @s add mr.skip_check

tag @e[type=item_display,tag=mr.new_platform] remove mr.new_platform


playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1