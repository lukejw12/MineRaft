tag @s remove valid_north
tag @s remove valid_south
tag @s remove valid_east
tag @s remove valid_west

scoreboard players set #counter_exists foundation_counter 0

execute if entity @p[y_rotation=135..225] if block ~ ~ ~ air if block ~ ~ ~-1 #wall_materials run tag @s add valid_north
execute if entity @p[y_rotation=225..315] if block ~ ~ ~ air if block ~1 ~ ~ #wall_materials run tag @s add valid_east
execute if entity @p[y_rotation=-135..-45] if block ~ ~ ~ air if block ~1 ~ ~ #wall_materials run tag @s add valid_east
execute if entity @p[y_rotation=-45..45] if block ~ ~ ~ air if block ~ ~ ~1 #wall_materials run tag @s add valid_south
execute if entity @p[y_rotation=45..135] if block ~ ~ ~ air if block ~-1 ~ ~ #wall_materials run tag @s add valid_west

execute if entity @s[tag=valid_north] if entity @e[tag=counter_active,distance=..0.5] run scoreboard players set #counter_exists foundation_counter 1
execute if entity @s[tag=valid_east] if entity @e[tag=counter_active,distance=..0.5] run scoreboard players set #counter_exists foundation_counter 1
execute if entity @s[tag=valid_south] if entity @e[tag=counter_active,distance=..0.5] run scoreboard players set #counter_exists foundation_counter 1
execute if entity @s[tag=valid_west] if entity @e[tag=counter_active,distance=..0.5] run scoreboard players set #counter_exists foundation_counter 1

execute if score #counter_exists foundation_counter matches 1 run tag @s remove valid_north
execute if score #counter_exists foundation_counter matches 1 run tag @s remove valid_east
execute if score #counter_exists foundation_counter matches 1 run tag @s remove valid_south
execute if score #counter_exists foundation_counter matches 1 run tag @s remove valid_west

execute if entity @s[tag=valid_north] run scoreboard players add #max counter_id 1
execute if entity @s[tag=valid_north] run scoreboard players operation #current counter_id = #max counter_id
execute if entity @s[tag=valid_north] run summon marker ~ ~ ~ {Tags:["counter_active","facing_south","recent_spawned"]}
execute if entity @s[tag=valid_north] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_north] run summon interaction ~ ~0.3 ~-0.3 {width:0.5,height:0.5,response:true,Tags:["counter_interact","recent_spawned"]}
execute if entity @s[tag=valid_north] align xyz run summon item_display ~0.5 ~0.5 ~0.35 {Rotation:[90f,0f],item_display:"ground",Tags:["counter_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:foundation_counter"}}}
execute if entity @s[tag=valid_north] run scoreboard players operation @e[tag=recent_spawned] counter_id = #current counter_id
execute if entity @s[tag=valid_north] run tag @e[tag=recent_spawned] remove recent_spawned
execute if entity @s[tag=valid_north] run kill @s

execute if entity @s[tag=valid_east] run scoreboard players add #max counter_id 1
execute if entity @s[tag=valid_east] run scoreboard players operation #current counter_id = #max counter_id
execute if entity @s[tag=valid_east] run summon marker ~ ~ ~ {Tags:["counter_active","facing_west","recent_spawned"]}
execute if entity @s[tag=valid_east] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_east] run summon interaction ~0.3 ~0.3 ~ {width:0.5,height:0.5,response:true,Tags:["counter_interact","recent_spawned"]}
execute if entity @s[tag=valid_east] align xyz run summon item_display ~0.65 ~0.5 ~0.5 {Rotation:[180f,0f],item_display:"ground",Tags:["counter_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:foundation_counter"}}}
execute if entity @s[tag=valid_east] run scoreboard players operation @e[tag=recent_spawned] counter_id = #current counter_id
execute if entity @s[tag=valid_east] run tag @e[tag=recent_spawned] remove recent_spawned
execute if entity @s[tag=valid_east] run kill @s

execute if entity @s[tag=valid_south] run scoreboard players add #max counter_id 1
execute if entity @s[tag=valid_south] run scoreboard players operation #current counter_id = #max counter_id
execute if entity @s[tag=valid_south] run summon marker ~ ~ ~ {Tags:["counter_active","facing_north","recent_spawned"]}
execute if entity @s[tag=valid_south] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_south] run summon interaction ~ ~0.3 ~0.3 {width:0.5,height:0.5,response:true,Tags:["counter_interact","recent_spawned"]}
execute if entity @s[tag=valid_south] align xyz run summon item_display ~0.5 ~0.5 ~0.65 {Rotation:[-90f,0f],item_display:"ground",Tags:["counter_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:foundation_counter"}}}
execute if entity @s[tag=valid_south] run scoreboard players operation @e[tag=recent_spawned] counter_id = #current counter_id
execute if entity @s[tag=valid_south] run tag @e[tag=recent_spawned] remove recent_spawned
execute if entity @s[tag=valid_south] run kill @s

execute if entity @s[tag=valid_west] run scoreboard players add #max counter_id 1
execute if entity @s[tag=valid_west] run scoreboard players operation #current counter_id = #max counter_id
execute if entity @s[tag=valid_west] run summon marker ~ ~ ~ {Tags:["counter_active","facing_east","recent_spawned"]}
execute if entity @s[tag=valid_west] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_west] run summon interaction ~-0.3 ~0.3 ~ {width:0.5,height:0.5,response:true,Tags:["counter_interact","recent_spawned"]}
execute if entity @s[tag=valid_west] align xyz run summon item_display ~0.35 ~0.5 ~0.5 {Rotation:[0f,0f],item_display:"ground",Tags:["counter_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:foundation_counter"}}}
execute if entity @s[tag=valid_west] run scoreboard players operation @e[tag=recent_spawned] counter_id = #current counter_id
execute if entity @s[tag=valid_west] run tag @e[tag=recent_spawned] remove recent_spawned
execute if entity @s[tag=valid_west] run kill @s

execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_east] unless entity @s[tag=valid_south] unless entity @s[tag=valid_west] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{foundation_counter_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["foundation_counter"]},"minecraft:item_model":"minecraft:foundation_counter_item","minecraft:item_name":{"translate":"item.mineraft.foundation_counter","fallback":"Foundation Counter"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_east] unless entity @s[tag=valid_south] unless entity @s[tag=valid_west] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 1 2
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_east] unless entity @s[tag=valid_south] unless entity @s[tag=valid_west] if score #counter_exists foundation_counter matches 0 run tellraw @p {"text":"You need a wall to mount this foundation counter","color":"red"}
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_east] unless entity @s[tag=valid_south] unless entity @s[tag=valid_west] run kill @s