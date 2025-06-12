execute if block ~ ~ ~ end_rod run tp @s ~ ~1 ~

scoreboard objectives add crop_plot dummy

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-180..-135] align xyz positioned ~0.5 ~ ~0.5 if blocks ~-1 ~ ~ ~ ~ ~ ~ 300 ~ masked run tag @s add valid_north
execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=135..180] align xyz positioned ~0.5 ~ ~0.5 if blocks ~-1 ~ ~ ~ ~ ~ ~ 300 ~ masked run tag @s add valid_north

execute at @s if entity @s[tag=valid_north] run scoreboard players add #max crop_plot 1
execute at @s if entity @s[tag=valid_north] run scoreboard players operation #current crop_plot = #max crop_plot

execute at @s if entity @s[tag=valid_north] run summon marker ~ ~ ~ {Tags:["crop_plot_active","facing_north","recent_spawned"]}
execute at @s if entity @s[tag=valid_north] run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid_north] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_north] run summon interaction ~-0.5 ~ ~ {width:1,height:1,response:true,Tags:["crop_plot_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_north] run summon item_display ~ ~0.29 ~ {Rotation:[90f,0f],item_display:"ground",Tags:["crop_plot_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}}
execute at @s if entity @s[tag=valid_north] run scoreboard players operation @e[tag=recent_spawned] crop_plot = #current crop_plot
execute at @s if entity @s[tag=valid_north] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_north] run kill @s
execute at @s if entity @s[tag=valid_north] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-135..-45] align xyz positioned ~0.5 ~ ~0.5 if blocks ~ ~ ~-1 ~ ~ ~ ~ 300 ~ masked run tag @s add valid_west
execute at @s if entity @s[tag=valid_west] run scoreboard players add #max crop_plot 1
execute at @s if entity @s[tag=valid_west] run scoreboard players operation #current crop_plot = #max crop_plot

execute at @s if entity @s[tag=valid_west] run summon marker ~ ~ ~ {Tags:["crop_plot_active","facing_west","recent_spawned"]}
execute at @s if entity @s[tag=valid_west] run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid_west] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_west] run summon interaction ~ ~ ~-0.5 {width:1,height:1,response:true,Tags:["crop_plot_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_west] run summon item_display ~ ~0.29 ~ {Rotation:[180f,0f],item_display:"ground",Tags:["crop_plot_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}}
execute at @s if entity @s[tag=valid_west] run scoreboard players operation @e[tag=recent_spawned] crop_plot = #current crop_plot
execute at @s if entity @s[tag=valid_west] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_west] run kill @s
execute at @s if entity @s[tag=valid_west] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=45..135] align xyz positioned ~0.5 ~ ~0.5 if blocks ~ ~ ~1 ~ ~ ~ ~ 300 ~ masked run tag @s add valid_south
execute at @s if entity @s[tag=valid_south] run scoreboard players add #max crop_plot 1
execute at @s if entity @s[tag=valid_south] run scoreboard players operation #current crop_plot = #max crop_plot

execute at @s if entity @s[tag=valid_south] run summon marker ~ ~ ~ {Tags:["crop_plot_active","facing_south","recent_spawned"]}
execute at @s if entity @s[tag=valid_south] run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid_south] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_south] run summon interaction ~ ~ ~0.5 {width:1,height:1,response:true,Tags:["crop_plot_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_south] run summon item_display ~ ~0.29 ~ {Rotation:[0f,0f],item_display:"ground",Tags:["crop_plot_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}}
execute at @s if entity @s[tag=valid_south] run scoreboard players operation @e[tag=recent_spawned] crop_plot = #current crop_plot
execute at @s if entity @s[tag=valid_south] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_south] run kill @s
execute at @s if entity @s[tag=valid_south] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-45..45] align xyz positioned ~0.5 ~ ~0.5 if blocks ~1 ~ ~ ~ ~ ~ ~ 300 ~ masked run tag @s add valid_east
execute at @s if entity @s[tag=valid_east] run scoreboard players add #max crop_plot 1
execute at @s if entity @s[tag=valid_east] run scoreboard players operation #current crop_plot = #max crop_plot

execute at @s if entity @s[tag=valid_east] run summon marker ~ ~ ~ {Tags:["crop_plot_active","facing_east","recent_spawned"]}
execute at @s if entity @s[tag=valid_east] run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid_east] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_east] run summon interaction ~0.5 ~ ~ {width:1,height:1,response:true,Tags:["crop_plot_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_east] run summon item_display ~ ~0.29 ~ {Rotation:[-90f,0f],item_display:"ground",Tags:["crop_plot_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}}
execute at @s if entity @s[tag=valid_east] run scoreboard players operation @e[tag=recent_spawned] crop_plot = #current crop_plot
execute at @s if entity @s[tag=valid_east] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_east] run kill @s
execute at @s if entity @s[tag=valid_east] run return 0

execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{crop_plot:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["crop_plot"]},"minecraft:item_model":"minecraft:crop_plot","minecraft:item_name":{"translate":"item.mineraft.crop_plot","fallback":"Crop Plot"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run kill @s