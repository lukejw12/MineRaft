
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~1 air run return fail
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~ air unless block ~1 ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~-1 air run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~1 air unless block ~ ~ ~1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ air unless block ~ ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~-1 air unless block ~ ~ ~-1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~1 air run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~ air unless block ~-1 ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~-1 air run return fail

scoreboard players set #has_support mr.data 0
scoreboard players set #new_support_value mr.data 0

execute positioned ~ ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #has_support mr.data 1
execute positioned ~ ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players set #new_support_value mr.data 0

execute positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] if score @s mr.support_value matches 0 run scoreboard players set #has_support mr.data 1
execute positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] if score @s mr.support_value matches 0 run scoreboard players set #new_support_value mr.data 1

execute positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] if score @s mr.support_value matches 0 run scoreboard players set #has_support mr.data 1
execute positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] if score @s mr.support_value matches 0 run scoreboard players set #new_support_value mr.data 2

execute positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] if score @s mr.support_value matches 0 run scoreboard players set #has_support mr.data 1
execute positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] if score @s mr.support_value matches 0 run scoreboard players set #new_support_value mr.data 3

execute positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] if score @s mr.support_value matches 0 run scoreboard players set #has_support mr.data 1
execute positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] if score @s mr.support_value matches 0 run scoreboard players set #new_support_value mr.data 4

execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run scoreboard players set #has_support mr.data 1
execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run scoreboard players set #new_support_value mr.data 99

execute unless score #has_support mr.data matches 1 run return fail

execute positioned ~ ~ ~ run fill ~1 ~ ~1 ~-1 ~ ~-1 barrier

execute positioned ~ ~-0.5 ~ run function mineraft:structures/platform/spawn_display with storage mineraft:platform

execute as @e[type=item_display,tag=mr.new_platform,limit=1] run data modify entity @s data.platform_type set from storage mineraft:platform platform_type
execute as @e[type=item_display,tag=mr.new_platform,limit=1] store result score @s mr.platform_id run scoreboard players add #global mr.platform_id 1
execute as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players operation @s mr.support_value = #new_support_value mr.data

execute if score #new_support_value mr.data matches 1 positioned ~3 ~ ~ as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players operation @s mr.support_id = @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] mr.support_id
execute if score #new_support_value mr.data matches 2 positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players operation @s mr.support_id = @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] mr.support_id
execute if score #new_support_value mr.data matches 3 positioned ~ ~ ~3 as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players operation @s mr.support_id = @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] mr.support_id
execute if score #new_support_value mr.data matches 4 positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players operation @s mr.support_id = @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] mr.support_id
execute if score #new_support_value mr.data matches 0 positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players operation @s mr.support_id = @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] mr.support_id

tag @e[type=item_display,tag=mr.new_platform] remove mr.new_platform

execute as @e[type=item_display,tag=mr.wall_display,distance=..3] at @s run function mineraft:structures/platform/hide_wall_top
execute as @e[type=item_display,tag=mr.support_display,distance=..2] at @s run function mineraft:structures/platform/hide_support_top

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1