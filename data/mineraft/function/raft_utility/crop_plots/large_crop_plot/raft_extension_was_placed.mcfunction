execute if block ~ ~ ~ end_rod run tp @s ~ ~1 ~

scoreboard objectives add tree_plot dummy

execute at @s if block ~ ~-1 ~ #valid_center_blocks if blocks ~1 ~3 ~1 ~-1 ~ ~-1 ~ 300 ~ masked run tag @s add valid

execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run scoreboard players add #max tree_plot 1
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run scoreboard players operation #current tree_plot = #max tree_plot

execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run summon marker ~ ~ ~ {Tags:["tree_plot_active","recent_spawned"]}
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run setblock ~ ~ ~ structure_void
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run summon interaction ~ ~ ~ {width:2.2,height:4,response:true,Tags:["tree_plot_interact","recent_spawned"]}
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run summon item_display ~ ~0.29 ~ {item_display:"ground",Tags:["tree_plot_facade","recent_spawned"],brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:tree_crop_plot"}}}
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run scoreboard players operation @e[tag=recent_spawned] tree_plot = #current tree_plot
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run tag @e[tag=recent_spawned] remove recent_spawned
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run kill @s
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks if entity @s[tag=valid] run return 0

execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_center_blocks run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{tree_plot:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["tree_plot"]},"minecraft:item_model":"minecraft:tree_crop_plot_item","minecraft:item_name":"Large Crop Plot","minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_center_blocks run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_center_blocks run kill @s
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_center_blocks run return 0

execute unless entity @s[tag=valid] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{tree_plot:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["tree_plot"]},"minecraft:item_model":"minecraft:tree_crop_plot_item","minecraft:item_name":"Large Crop Plot","minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] run kill @s
execute unless entity @s[tag=valid] run return 0