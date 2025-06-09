execute if block ~ ~ ~ end_rod run tp @s ~ ~1 ~

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-180..-135] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_north
execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=135..180] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_north

execute at @s if entity @s[tag=valid_north] run scoreboard players add #max portable_trading_post_id 1
execute at @s if entity @s[tag=valid_north] run scoreboard players operation #current portable_trading_post_id = #max portable_trading_post_id

execute at @s if entity @s[tag=valid_north] run summon marker ~ ~ ~ {Tags:["portable_trading_post_active","facing_north","recent_spawned"]}
execute at @s if entity @s[tag=valid_north] run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid_north] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_north] run summon item_display ~ ~0.3 ~ {Rotation:[0f,0f],item_display:"ground",Tags:["portable_trading_post_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"register"}}}
execute at @s if entity @s[tag=valid_north] run summon villager ~ ~-1 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["portable_trader","recent_spawned","register_entity","t3_rep"],VillagerData:{profession:"minecraft:toolsmith",level:5,type:"minecraft:plains"},Offers:{}}
execute at @s if entity @s[tag=valid_north] run scoreboard players operation @e[tag=recent_spawned] portable_trading_post_id = #current portable_trading_post_id
execute at @s if entity @s[tag=valid_north] as @e[type=villager,tag=recent_spawned] run function mineraft:trading_post/apply_t3_trades
execute at @s if entity @s[tag=valid_north] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_north] run kill @s
execute at @s if entity @s[tag=valid_north] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-135..-45] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_west
execute at @s if entity @s[tag=valid_west] run scoreboard players add #max portable_trading_post_id 1
execute at @s if entity @s[tag=valid_west] run scoreboard players operation #current portable_trading_post_id = #max portable_trading_post_id

execute at @s if entity @s[tag=valid_west] run summon marker ~ ~ ~ {Tags:["portable_trading_post_active","facing_west","recent_spawned"]}
execute at @s if entity @s[tag=valid_west] run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid_west] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_west] run summon item_display ~ ~0.3 ~ {Rotation:[90f,0f],item_display:"ground",Tags:["portable_trading_post_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"register"}}}
execute at @s if entity @s[tag=valid_west] run summon villager ~ ~-1 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["portable_trader","recent_spawned","register_entity","t3_rep"],VillagerData:{profession:"minecraft:toolsmith",level:5,type:"minecraft:plains"},Offers:{}}
execute at @s if entity @s[tag=valid_west] run scoreboard players operation @e[tag=recent_spawned] portable_trading_post_id = #current portable_trading_post_id
execute at @s if entity @s[tag=valid_west] as @e[type=villager,tag=recent_spawned] run function mineraft:trading_post/apply_t3_trades
execute at @s if entity @s[tag=valid_west] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_west] run kill @s
execute at @s if entity @s[tag=valid_west] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=45..135] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_south
execute at @s if entity @s[tag=valid_south] run scoreboard players add #max portable_trading_post_id 1
execute at @s if entity @s[tag=valid_south] run scoreboard players operation #current portable_trading_post_id = #max portable_trading_post_id

execute at @s if entity @s[tag=valid_south] run summon marker ~ ~ ~ {Tags:["portable_trading_post_active","facing_south","recent_spawned"]}
execute at @s if entity @s[tag=valid_south] run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid_south] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_south] run summon item_display ~ ~0.3 ~ {Rotation:[-90f,0f],item_display:"ground",Tags:["portable_trading_post_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"register"}}}
execute at @s if entity @s[tag=valid_south] run summon villager ~ ~-1 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["portable_trader","recent_spawned","register_entity","t3_rep"],VillagerData:{profession:"minecraft:toolsmith",level:5,type:"minecraft:plains"},Offers:{}}
execute at @s if entity @s[tag=valid_south] run scoreboard players operation @e[tag=recent_spawned] portable_trading_post_id = #current portable_trading_post_id
execute at @s if entity @s[tag=valid_south] as @e[type=villager,tag=recent_spawned] run function mineraft:trading_post/apply_t3_trades
execute at @s if entity @s[tag=valid_south] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_south] run kill @s
execute at @s if entity @s[tag=valid_south] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-45..45] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_east
execute at @s if entity @s[tag=valid_east] run scoreboard players add #max portable_trading_post_id 1
execute at @s if entity @s[tag=valid_east] run scoreboard players operation #current portable_trading_post_id = #max portable_trading_post_id

execute at @s if entity @s[tag=valid_east] run summon marker ~ ~ ~ {Tags:["portable_trading_post_active","facing_east","recent_spawned"]}
execute at @s if entity @s[tag=valid_east] run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid_east] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_east] run summon item_display ~ ~0.3 ~ {Rotation:[180f,0f],item_display:"ground",Tags:["portable_trading_post_facade","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"register"}}}
execute at @s if entity @s[tag=valid_east] run summon villager ~ ~-1 ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["portable_trader","recent_spawned","register_entity","t3_rep"],VillagerData:{profession:"minecraft:toolsmith",level:5,type:"minecraft:plains"},Offers:{}}
execute at @s if entity @s[tag=valid_east] run scoreboard players operation @e[tag=recent_spawned] portable_trading_post_id = #current portable_trading_post_id
execute at @s if entity @s[tag=valid_east] as @e[type=villager,tag=recent_spawned] run function mineraft:trading_post/apply_t3_trades
execute at @s if entity @s[tag=valid_east] run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid_east] run kill @s
execute at @s if entity @s[tag=valid_east] run return 0

execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{portable_trading_post_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["portable_trading_post"]},"minecraft:item_model":"minecraft:portable_trading_post_item","minecraft:item_name":{"translate":"item.mineraft.portable_trading_post","fallback":"Portable Trading Post"},"minecraft:rarity":"epic"}}}
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run kill @s