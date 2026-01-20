execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~1 air run return fail
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~ air unless block ~1 ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~-1 air run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~1 air unless block ~ ~ ~1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ air unless block ~ ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~-1 air unless block ~ ~ ~-1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~1 air run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~ air unless block ~-1 ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~-1 air run return fail

execute positioned ~ ~ ~ run fill ~1 ~ ~1 ~-1 ~ ~-1 barrier

execute positioned ~ ~-0.5 ~ run function mineraft:structures/platform/spawn_display with storage mineraft:platform

execute as @e[type=item_display,tag=mr.new_platform,limit=1] run data modify entity @s data.platform_type set from storage mineraft:platform platform_type
execute as @e[type=item_display,tag=mr.new_platform,limit=1] store result score @s mr.platform_id run scoreboard players add #global mr.platform_id 1

tag @e[type=item_display,tag=mr.new_platform] remove mr.new_platform

execute as @e[type=item_display,tag=mr.wall_display,distance=..3] at @s run function mineraft:structures/platform/hide_wall_top
execute as @e[type=item_display,tag=mr.support_display,distance=..2] at @s run function mineraft:structures/platform/hide_support_top

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1