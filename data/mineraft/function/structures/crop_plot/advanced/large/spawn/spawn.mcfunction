function mineraft:structures/crop_plot/advanced/large/spawn/spawn_display with storage mineraft:crop_plot

$summon interaction ~$(interaction_x) ~ ~$(interaction_z) {width:2.02f,height:5f,Tags:["mr.crop_plot","mr.crop_plot_interaction","mr.new_interaction"]}

execute at @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_1_north
execute at @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_1_south
execute at @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_1_east
execute at @e[type=item_display,tag=mr.new_display,limit=1] if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_1_west

$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x1) ~ ~$(offset_z1) if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_2_north
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x1) ~ ~$(offset_z1) if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_2_south
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x1) ~ ~$(offset_z1) if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_2_east
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x1) ~ ~$(offset_z1) if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_2_west

$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x2) ~ ~$(offset_z2) if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_3_north
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x2) ~ ~$(offset_z2) if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_3_south
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x2) ~ ~$(offset_z2) if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_3_east
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x2) ~ ~$(offset_z2) if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_3_west

$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x3) ~ ~$(offset_z3) if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_4_north
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x3) ~ ~$(offset_z3) if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_4_south
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x3) ~ ~$(offset_z3) if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_4_east
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x3) ~ ~$(offset_z3) if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_4_west

execute at @e[type=item_display,tag=mr.new_display,limit=1] run setblock ~ ~ ~ barrier
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x1) ~ ~$(offset_z1) run setblock ~ ~ ~ barrier
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x2) ~ ~$(offset_z2) run setblock ~ ~ ~ barrier
$execute at @e[type=item_display,tag=mr.new_display,limit=1] positioned ~$(offset_x3) ~ ~$(offset_z3) run setblock ~ ~ ~ barrier

execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.crop_plot_id run scoreboard players add #global mr.crop_plot_id 1
execute as @e[type=interaction,tag=mr.new_interaction,limit=1] run scoreboard players operation @s mr.crop_plot_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.crop_plot_id

execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.crop_plot_type set from storage mineraft:crop_plot crop_plot_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.offset_x1 set from storage mineraft:crop_plot offset_x1
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.offset_z1 set from storage mineraft:crop_plot offset_z1
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.offset_x2 set from storage mineraft:crop_plot offset_x2
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.offset_z2 set from storage mineraft:crop_plot offset_z2
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.offset_x3 set from storage mineraft:crop_plot offset_x3
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.offset_z3 set from storage mineraft:crop_plot offset_z3
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.state set value "empty"
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.crop_plot_timer 0
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.crop_plot_hits 0

tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=interaction,tag=mr.new_interaction] remove mr.new_interaction

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.crop_plot:1b}] 1

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1