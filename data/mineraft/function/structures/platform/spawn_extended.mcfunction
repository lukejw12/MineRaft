execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~1 air unless block ~1 ~ ~1 barrier unless block ~1 ~ ~1 iron_bars run say FAILED: Block at CENTER not air/barrier/iron_bars
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~1 air unless block ~1 ~ ~1 barrier unless block ~1 ~ ~1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~ air unless block ~1 ~ ~ barrier unless block ~1 ~ ~ iron_bars run say FAILED: Block at +1 +0 +0 not air/barrier/iron_bars
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~ air unless block ~1 ~ ~ barrier unless block ~1 ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 barrier run say FAILED: Block at +1 +0 -1 not air/barrier
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~-1 air unless block ~1 ~ ~-1 barrier run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~1 air unless block ~ ~ ~1 barrier unless block ~ ~ ~1 iron_bars run say FAILED: Block at +0 +0 +1 not air/barrier/iron_bars
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~1 air unless block ~ ~ ~1 barrier unless block ~ ~ ~1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ iron_bars run say FAILED: Block at +0 +0 +0 not air/barrier/iron_bars
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ air unless block ~ ~ ~ barrier unless block ~ ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~-1 air unless block ~ ~ ~-1 barrier unless block ~ ~ ~-1 iron_bars run say FAILED: Block at +0 +0 -1 not air/barrier/iron_bars
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~-1 air unless block ~ ~ ~-1 barrier unless block ~ ~ ~-1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 barrier run say FAILED: Block at -1 +0 +1 not air/barrier
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~1 air unless block ~-1 ~ ~1 barrier run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~ air unless block ~-1 ~ ~ barrier unless block ~-1 ~ ~ iron_bars run say FAILED: Block at -1 +0 +0 not air/barrier/iron_bars
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~ air unless block ~-1 ~ ~ barrier unless block ~-1 ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 barrier run say FAILED: Block at -1 +0 -1 not air/barrier
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~-1 air unless block ~-1 ~ ~-1 barrier run return fail
say Passed all block checks

scoreboard players set #has_support mr.data 0
scoreboard players set #new_support_value mr.data 0
scoreboard players set #source_support_id mr.data 0

execute positioned ~ ~-2.79 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run say Found support directly below
execute positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] if score @s mr.support_count matches ..4 run scoreboard players set #has_support mr.data 1
execute positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] if score @s mr.support_count matches ..4 run scoreboard players set #new_support_value mr.data 0
execute positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] if score @s mr.support_count matches ..4 run scoreboard players operation #source_support_id mr.data = @s mr.support_id

execute if score #has_support mr.data matches 0 positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run say Found platform to west
execute if score #has_support mr.data matches 0 positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] run function mineraft:structures/platform/check_can_extend {dir:2}

execute if score #has_support mr.data matches 0 positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run say Found platform to east
execute if score #has_support mr.data matches 0 positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] run function mineraft:structures/platform/check_can_extend {dir:1}

execute if score #has_support mr.data matches 0 positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run say Found platform to north
execute if score #has_support mr.data matches 0 positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] run function mineraft:structures/platform/check_can_extend {dir:4}

execute if score #has_support mr.data matches 0 positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run say Found platform to south
execute if score #has_support mr.data matches 0 positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_display,distance=..0.5,limit=1] run function mineraft:structures/platform/check_can_extend {dir:3}

execute if score #has_support mr.data matches 0 positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..4] if score @s mr.support_count matches ..4 run say Found any support within 4 blocks below
execute if score #has_support mr.data matches 0 positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..4,limit=1,sort=nearest] if score @s mr.support_count matches ..4 run scoreboard players set #has_support mr.data 1
execute if score #has_support mr.data matches 0 positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..4,limit=1,sort=nearest] if score @s mr.support_count matches ..4 run scoreboard players set #new_support_value mr.data 0
execute if score #has_support mr.data matches 0 positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..4,limit=1,sort=nearest] if score @s mr.support_count matches ..4 run scoreboard players operation #source_support_id mr.data = @s mr.support_id

execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run scoreboard players set #has_support mr.data 1
execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run scoreboard players set #new_support_value mr.data 99

execute if score #has_support mr.data matches 1 run say Has support - placing platform
execute unless score #has_support mr.data matches 1 run say No support - failing
execute unless score #has_support mr.data matches 1 run return fail
execute positioned ~ ~ ~ run fill ~1 ~ ~1 ~-1 ~ ~-1 barrier replace air

execute positioned ~ ~-0.5 ~ run function mineraft:structures/platform/spawn_display with storage mineraft:platform

execute as @e[type=item_display,tag=mr.new_platform,limit=1] run data modify entity @s data.platform_type set from storage mineraft:platform platform_type
execute as @e[type=item_display,tag=mr.new_platform,limit=1] store result score @s mr.platform_id run scoreboard players add #global mr.platform_id 1
execute as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players operation @s mr.support_value = #new_support_value mr.data
execute as @e[type=item_display,tag=mr.new_platform,limit=1] run scoreboard players operation @s mr.support_id = #source_support_id mr.data

execute if score #new_support_value mr.data matches 0 positioned ~ ~-2.79 ~ as @e[type=item_display,tag=mr.support_display,distance=..0.5,limit=1] run scoreboard players add @s mr.support_count 1
execute if score #new_support_value mr.data matches 1..4 as @e[type=item_display,tag=mr.support_display] if score @s mr.support_id = #source_support_id mr.data run scoreboard players add @s mr.support_count 1

tag @e[type=item_display,tag=mr.new_platform] remove mr.new_platform

execute as @e[type=item_display,tag=mr.wall_display,distance=..3] at @s run function mineraft:structures/platform/hide_wall_top

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1