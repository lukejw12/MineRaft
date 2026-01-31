function mineraft:structures/crop_plot/spawn/spawn_display with storage mineraft:crop_plot

execute positioned ~-1 ~ ~-1 run fill ~2 ~ ~2 ~ ~ ~ barrier

summon interaction ~ ~ ~ {width:3.02f,height:5f,Tags:["mr.crop_plot","mr.crop_plot_interaction","mr.new_interaction"]}

execute positioned ~-1 ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_1_north
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_1_south
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_1_east
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_1_west

execute positioned ~ ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_2_north
execute positioned ~ ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_2_south
execute positioned ~ ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_2_east
execute positioned ~ ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_2_west

execute positioned ~1 ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_3_north
execute positioned ~1 ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_3_south
execute positioned ~1 ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_3_east
execute positioned ~1 ~ ~-1 if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_3_west

execute positioned ~-1 ~ ~ if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_4_north
execute positioned ~-1 ~ ~ if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_4_south
execute positioned ~-1 ~ ~ if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_4_east
execute positioned ~-1 ~ ~ if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_4_west

execute positioned ~ ~ ~ if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_5_north
execute positioned ~ ~ ~ if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_5_south
execute positioned ~ ~ ~ if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_5_east
execute positioned ~ ~ ~ if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_5_west

execute positioned ~1 ~ ~ if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_6_north
execute positioned ~1 ~ ~ if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_6_south
execute positioned ~1 ~ ~ if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_6_east
execute positioned ~1 ~ ~ if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_6_west

execute positioned ~-1 ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_7_north
execute positioned ~-1 ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_7_south
execute positioned ~-1 ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_7_east
execute positioned ~-1 ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_7_west

execute positioned ~ ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_8_north
execute positioned ~ ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_8_south
execute positioned ~ ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_8_east
execute positioned ~ ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_8_west

execute positioned ~1 ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_9_north
execute positioned ~1 ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_9_south
execute positioned ~1 ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_9_east
execute positioned ~1 ~ ~1 if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_9_west

execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.crop_plot_id run scoreboard players add #global mr.crop_plot_id 1
execute as @e[type=interaction,tag=mr.new_interaction,limit=1] run scoreboard players operation @s mr.crop_plot_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.crop_plot_id

execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.crop_plot_type set from storage mineraft:crop_plot crop_plot_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.state set value "empty"

tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=interaction,tag=mr.new_interaction] remove mr.new_interaction

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.crop_plot:1b}] 1

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1