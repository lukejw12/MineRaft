execute if block ~ ~ ~ end_rod run tp @s ~ ~1 ~
execute at @s if block ~ ~-1 ~ #valid_center_blocks if blocks ~1 ~1 ~1 ~-1 ~ ~-1 ~ 300 ~ masked run tag @s add valid
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run summon marker ~ ~ ~ {Tags:["smeltery_active"]}
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run setblock ~ ~ ~ smoker
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run summon item_display ~ ~0.51 ~ {item_display:"ground",Tags:["smeltery_facade"],brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:smeltery_st"}}}
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks run kill @s
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #valid_center_blocks if entity @s[tag=valid] run return 0

execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_center_blocks run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{smeltery_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["smeltery"]},"minecraft:item_model":"minecraft:smeltery","minecraft:item_name":'Smeltery',"minecraft:rarity":"rare"}}}
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_center_blocks run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_center_blocks run kill @s
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_center_blocks run return 0

execute unless entity @s[tag=valid] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{smeltery_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["smeltery"]},"minecraft:item_model":"minecraft:smeltery","minecraft:item_name":'Smeltery',"minecraft:rarity":"rare"}}}
execute unless entity @s[tag=valid] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] run kill @s
execute unless entity @s[tag=valid] run return 0