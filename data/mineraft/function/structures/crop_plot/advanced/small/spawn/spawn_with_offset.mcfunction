function mineraft:structures/crop_plot/advanced/small/spawn/spawn_display with storage mineraft:crop_plot

summon interaction ~0.5 ~ ~0.5 {width:1.05f,height:1.1f,Tags:["mr.small_adv_crop_plot","mr.small_adv_crop_plot_interaction","mr.new_interaction","mr.block_0"]}
function mineraft:structures/crop_plot/advanced/small/spawn/spawn_interaction with storage mineraft:crop_plot

function mineraft:structures/crop_plot/advanced/small/spawn/spawn_crop_displays with storage mineraft:crop_plot

execute if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_north
execute if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_south
execute if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_east
execute if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_west
$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~ ~ iron_trapdoor[facing=north] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_north2
$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~ ~ iron_trapdoor[facing=south] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_south2
$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~ ~ iron_trapdoor[facing=east] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_east2
$execute positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~ ~ iron_trapdoor[facing=west] run tag @e[type=item_display,tag=mr.new_display,limit=1] add mr.trapdoor_west2

setblock ~ ~ ~ barrier
$setblock ~$(block1_offset_x) ~ ~$(block1_offset_z) barrier

data modify storage mineraft:grid type set value "small_adv_crop_plot"
data modify storage mineraft:grid block1_offset_x set from storage mineraft:crop_plot block1_offset_x
data modify storage mineraft:grid block1_offset_z set from storage mineraft:crop_plot block1_offset_z
execute positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/claim_smart_pair with storage mineraft:grid

execute as @e[type=item_display,tag=mr.new_display,limit=1] store result score @s mr.crop_plot_id run scoreboard players add #global mr.crop_plot_id 1
execute as @e[type=interaction,tag=mr.new_interaction] run scoreboard players operation @s mr.crop_plot_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.crop_plot_id
execute as @e[type=item_display,tag=mr.new_crop] run scoreboard players operation @s mr.crop_plot_id = @e[type=item_display,tag=mr.new_display,limit=1] mr.crop_plot_id

execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.crop_plot_type set from storage mineraft:crop_plot crop_plot_type
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.state set value "dry"
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.block1_offset_x set from storage mineraft:crop_plot block1_offset_x
execute as @e[type=item_display,tag=mr.new_display,limit=1] run data modify entity @s data.block1_offset_z set from storage mineraft:crop_plot block1_offset_z
execute as @e[type=item_display,tag=mr.new_display,limit=1] run scoreboard players set @s mr.purifier_fuel 0

execute as @e[type=item_display,tag=mr.new_crop,tag=mr.crop_1] run data modify entity @s data.slot set value 1
execute as @e[type=item_display,tag=mr.new_crop,tag=mr.crop_2] run data modify entity @s data.slot set value 2
execute as @e[type=item_display,tag=mr.new_crop,tag=mr.crop_3] run data modify entity @s data.slot set value 3
execute as @e[type=item_display,tag=mr.new_crop,tag=mr.crop_4] run data modify entity @s data.slot set value 4
execute as @e[type=item_display,tag=mr.new_crop] run data modify entity @s data.state set value "empty"
execute as @e[type=item_display,tag=mr.new_crop] run scoreboard players set @s mr.crop_plot_timer 0

tag @e[type=item_display,tag=mr.new_display] remove mr.new_display
tag @e[type=item_display,tag=mr.new_crop] remove mr.new_crop
tag @e[type=interaction,tag=mr.new_interaction] remove mr.new_interaction

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1
