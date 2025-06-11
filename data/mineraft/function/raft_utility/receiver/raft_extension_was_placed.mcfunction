execute if block ~ ~ ~ end_rod run tp @s ~ ~1 ~

scoreboard objectives add receiver_id dummy

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-180..-136] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air if block ~ ~1 ~ air if block ~1 ~ ~ air if block ~1 ~1 ~ air if block ~2 ~ ~ air if block ~2 ~1 ~ air run tag @s add valid_north
execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=135..180] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air if block ~ ~1 ~ air if block ~1 ~ ~ air if block ~1 ~1 ~ air if block ~2 ~ ~ air if block ~2 ~1 ~ air run tag @s add valid_north

execute at @s if entity @s[tag=valid_north] run scoreboard players add #max receiver_id 1
execute at @s if entity @s[tag=valid_north] run scoreboard players operation #current receiver_id = #max receiver_id

execute at @s if entity @s[tag=valid_north] run summon marker ~ ~ ~ {Tags:["receiver_active","facing_north","recent_spawned"]}
execute at @s if entity @s[tag=valid_north] run fill ~-1 ~ ~ ~1 ~1 ~ barrier
execute at @s if entity @s[tag=valid_north] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_north] run summon interaction ~-1 ~ ~ {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_north] run summon interaction ~1 ~ ~ {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_north] run summon interaction ~ ~ ~ {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_north] run summon item_display ~ ~0.3 ~ {Rotation:[0f,0f],item_display:"ground",Tags:["receiver_facade","recent_spawned"],item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:receiver"}}}
execute at @s if entity @s[tag=valid_north] run scoreboard players operation @e[tag=recent_spawned] receiver_id = #current receiver_id
execute at @s if entity @s[tag=valid_north] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_north] run kill @s
execute at @s if entity @s[tag=valid_north] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-135..-45] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~ ~1 air if block ~ ~1 ~1 air if block ~ ~ ~2 air if block ~ ~1 ~2 air run tag @s add valid_west
execute at @s if entity @s[tag=valid_west] run scoreboard players add #max receiver_id 1
execute at @s if entity @s[tag=valid_west] run scoreboard players operation #current receiver_id = #max receiver_id

execute at @s if entity @s[tag=valid_west] run summon marker ~ ~ ~ {Tags:["receiver_active","facing_west","recent_spawned"]}
execute at @s if entity @s[tag=valid_west] run fill ~ ~ ~-1 ~ ~1 ~1 barrier
execute at @s if entity @s[tag=valid_west] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_west] run summon interaction ~ ~ ~-1 {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_west] run summon interaction ~ ~ ~1 {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_west] run summon interaction ~ ~ ~ {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_west] run summon item_display ~ ~0.3 ~ {Rotation:[90f,0f],item_display:"ground",Tags:["receiver_facade","recent_spawned"],item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:receiver"}}}
execute at @s if entity @s[tag=valid_west] run scoreboard players operation @e[tag=recent_spawned] receiver_id = #current receiver_id
execute at @s if entity @s[tag=valid_west] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_west] run kill @s
execute at @s if entity @s[tag=valid_west] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=45..134] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air if block ~ ~1 ~ air if block ~-1 ~ ~ air if block ~-1 ~1 ~ air if block ~-2 ~ ~ air if block ~-2 ~1 ~ air run tag @s add valid_south
execute at @s if entity @s[tag=valid_south] run scoreboard players add #max receiver_id 1
execute at @s if entity @s[tag=valid_south] run scoreboard players operation #current receiver_id = #max receiver_id

execute at @s if entity @s[tag=valid_south] run summon marker ~ ~ ~ {Tags:["receiver_active","facing_south","recent_spawned"]}
execute at @s if entity @s[tag=valid_south] run fill ~ ~ ~-1 ~ ~1 ~1 barrier
execute at @s if entity @s[tag=valid_south] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_south] run summon interaction ~ ~ ~1 {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_south] run summon interaction ~ ~ ~ {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_south] run summon interaction ~ ~ ~-1 {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_south] run summon item_display ~ ~0.3 ~ {Rotation:[-90f,0f],item_display:"ground",Tags:["receiver_facade","recent_spawned"],item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:receiver"}}}
execute at @s if entity @s[tag=valid_south] run scoreboard players operation @e[tag=recent_spawned] receiver_id = #current receiver_id
execute at @s if entity @s[tag=valid_south] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_south] run kill @s
execute at @s if entity @s[tag=valid_south] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-44..44] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~ ~-1 air if block ~ ~1 ~-1 air if block ~ ~ ~-2 air if block ~ ~1 ~-2 air run tag @s add valid_east
execute at @s if entity @s[tag=valid_east] run scoreboard players add #max receiver_id 1
execute at @s if entity @s[tag=valid_east] run scoreboard players operation #current receiver_id = #max receiver_id

execute at @s if entity @s[tag=valid_east] run summon marker ~ ~ ~ {Tags:["receiver_active","facing_east","recent_spawned"]}
execute at @s if entity @s[tag=valid_east] run fill ~-1 ~ ~ ~1 ~1 ~ barrier
execute at @s if entity @s[tag=valid_east] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_east] run summon interaction ~1 ~ ~ {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_east] run summon interaction ~ ~ ~ {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_east] run summon interaction ~-1 ~ ~ {width:1.05,height:2.0,response:true,Tags:["receiver_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid_east] run summon item_display ~ ~0.3 ~ {Rotation:[180f,0f],item_display:"ground",Tags:["receiver_facade","recent_spawned"],item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:receiver"}}}
execute at @s if entity @s[tag=valid_east] run scoreboard players operation @e[tag=recent_spawned] receiver_id = #current receiver_id
execute at @s if entity @s[tag=valid_east] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_east] run kill @s
execute at @s if entity @s[tag=valid_east] run return 0

execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{receiver_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["receiver"]},"minecraft:item_model":"minecraft:receiver_item","minecraft:item_name":{"translate":"item.mineraft.receiver","fallback":"Receiver"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run kill @s