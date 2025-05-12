
execute if block ~ ~ ~ end_rod run tp @s ~ ~1 ~

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-180..-135] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_north
execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=135..180] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_north
execute at @s if entity @s[tag=valid_north] run summon marker ~ ~ ~ {Tags:["simple_grill_active","facing_north"]}
execute at @s if entity @s[tag=valid_north] run setblock ~ ~ ~ blast_furnace
execute at @s if entity @s[tag=valid_north] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_north] run summon item_display ~ ~0.3 ~ {Rotation:[180f,0f],brightness:{sky:15,block:0},item_display:"ground",Tags:["simple_grill_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blast_furnace",count:1,components:{"minecraft:item_model":"minecraft:simple_grill"}}}
execute at @s if entity @s[tag=valid_north] run kill @s
execute at @s if entity @s[tag=valid_north] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-135..-45] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_west
execute at @s if entity @s[tag=valid_west] run summon marker ~ ~ ~ {Tags:["simple_grill_active","facing_west"]}
execute at @s if entity @s[tag=valid_west] run setblock ~ ~ ~ blast_furnace
execute at @s if entity @s[tag=valid_west] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_west] run summon item_display ~ ~0.3 ~ {Rotation:[-90f,0f],brightness:{sky:15,block:0},item_display:"ground",Tags:["simple_grill_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blast_furnace",count:1,components:{"minecraft:item_model":"minecraft:simple_grill"}}}
execute at @s if entity @s[tag=valid_west] run kill @s
execute at @s if entity @s[tag=valid_west] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=45..135] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_south
execute at @s if entity @s[tag=valid_south] run summon marker ~ ~ ~ {Tags:["simple_grill_active","facing_south"]}
execute at @s if entity @s[tag=valid_south] run setblock ~ ~ ~ blast_furnace
execute at @s if entity @s[tag=valid_south] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_south] run summon item_display ~ ~0.3 ~ {Rotation:[90f,0f],brightness:{sky:15,block:0},item_display:"ground",Tags:["simple_grill_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blast_furnace",count:1,components:{"minecraft:item_model":"minecraft:simple_grill"}}}
execute at @s if entity @s[tag=valid_south] run kill @s
execute at @s if entity @s[tag=valid_south] run return 0

execute if block ~ ~-1 ~ #raft_materials if entity @p[y_rotation=-45..45] positioned ~0.5 ~ ~0.5 if block ~ ~ ~ air run tag @s add valid_east
execute at @s if entity @s[tag=valid_east] run summon marker ~ ~ ~ {Tags:["simple_grill_active","facing_east"]}
execute at @s if entity @s[tag=valid_east] run setblock ~ ~ ~ blast_furnace
execute at @s if entity @s[tag=valid_east] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid_east] run summon item_display ~ ~0.3 ~ {Rotation:[0f,0f],brightness:{sky:15,block:0},item_display:"ground",Tags:["simple_grill_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blast_furnace",count:1,components:{"minecraft:item_model":"minecraft:simple_grill"}}}
execute at @s if entity @s[tag=valid_east] run kill @s
execute at @s if entity @s[tag=valid_east] run return 0

execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{simple_grill_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["simple_grill"]},"minecraft:item_model":"minecraft:simple_grill","minecraft:item_name":{"translate":"item.mineraft.simple_grill","fallback":"Water Purifier"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run kill @s
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_west] unless entity @s[tag=valid_south] unless entity @s[tag=valid_east] run return 0