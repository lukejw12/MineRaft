execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~1 #mineraft:platform-override unless block ~1 ~ ~1 barrier unless block ~1 ~ ~1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~ #mineraft:platform-override unless block ~1 ~ ~ barrier unless block ~1 ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~1 ~ ~-1 #mineraft:platform-override unless block ~1 ~ ~-1 barrier run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~1 #mineraft:platform-override unless block ~ ~ ~1 barrier unless block ~ ~ ~1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~ #mineraft:platform-override unless block ~ ~ ~ barrier unless block ~ ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~ ~ ~-1 #mineraft:platform-override unless block ~ ~ ~-1 barrier unless block ~ ~ ~-1 iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~1 #mineraft:platform-override unless block ~-1 ~ ~1 barrier run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~ #mineraft:platform-override unless block ~-1 ~ ~ barrier unless block ~-1 ~ ~ iron_bars run return fail
execute positioned ~-1 ~ ~-1 unless block ~-1 ~ ~-1 #mineraft:platform-override unless block ~-1 ~ ~-1 barrier run return fail

function mineraft:structures/support/validation/position/check_position_valid
execute if score #position_valid mr.data matches 0 run return fail

function mineraft:structures/support/validation/position/has_capacity
execute if score #has_capacity mr.data matches 0 run return fail

execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run scoreboard players set #has_capacity mr.data 1
execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.platform:1b}] 1

function mineraft:structures/platform/placement/models/get_model

fill ~1 ~ ~1 ~-1 ~ ~-1 barrier replace air

execute positioned ~ ~-0.71 ~ run function mineraft:structures/platform/placement/spawn/display with storage mineraft:platform

execute as @e[type=item_display,tag=mr.new_platform,limit=1] run data modify entity @s data.platform_type set from storage mineraft:platform platform_type
execute as @e[type=item_display,tag=mr.new_platform,limit=1] store result score @s mr.platform_id run scoreboard players add #global mr.platform_id 1

tag @e[type=item_display,tag=mr.new_platform] remove mr.new_platform

execute as @e[type=item_display,tag=mr.wall_display,distance=..3] at @s run function mineraft:structures/platform/utils/wall_interaction/hide_top

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1