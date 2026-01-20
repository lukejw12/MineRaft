tellraw @a ["§e[DEBUG] spawn_on_support called"]
execute unless block ~1 ~ ~1 #air run return fail
say 1
execute unless block ~1 ~ ~ #air run return fail
say 2
execute unless block ~1 ~ ~-1 #air run return fail
say 3
execute unless block ~ ~ ~1 #air run return fail
say 4
#execute unless block ~ ~ ~ air run return fail
execute unless block ~ ~ ~-1 #air run return fail
execute unless block ~-1 ~ ~1 #air run return fail
execute unless block ~-1 ~ ~ #air run return fail
execute unless block ~-1 ~ ~-1 #air run return fail

tellraw @a ["§a[DEBUG] air checks passed"]

execute positioned ~1 ~-2.79 ~1 as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] run tag @s add mr.supporting_platform
execute positioned ~1 ~-2.79 ~1 as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] run tellraw @a ["§a[DEBUG] tagged support as supporting_platform"]

#execute positioned ~1 ~0.21 ~1 run setblock ~ ~ ~ air

fill ~1 ~ ~1 ~-1 ~ ~-1 barrier replace air

tellraw @a ["§a[DEBUG] barriers placed"]

function mineraft:structures/platform/spawn_display with storage mineraft:platform

execute as @e[type=item_display,tag=mr.new_platform,limit=1] run data modify entity @s data.platform_type set from storage mineraft:platform platform_type
execute as @e[type=item_display,tag=mr.new_platform,limit=1] store result score @s mr.platform_id run scoreboard players add #global mr.platform_id 1

tag @e[type=item_display,tag=mr.new_platform] remove mr.new_platform

execute as @e[type=item_display,tag=mr.wall_display,distance=..4] at @s run function mineraft:structures/platform/hide_wall_top

tellraw @a ["§a[DEBUG] platform spawned successfully"]

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1