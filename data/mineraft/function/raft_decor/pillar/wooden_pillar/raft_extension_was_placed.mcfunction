execute at @s if block ~ ~ ~ end_rod if block ~ ~1 ~ #pillar_replacable run tp @s ~ ~1 ~
execute at @s if block ~ ~-1 ~ #valid_decor_placement if blocks ~ ~ ~ ~ ~1 ~ ~ 300 ~ masked if block ~ ~1 ~ #pillar_replacable run tag @s add valid

execute at @s if entity @s[tag=valid] run summon marker ~ ~ ~ {Tags:["wooden_support_active"]}
execute at @s if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid] run summon item_display ~ ~0.21 ~ {item_display:"ground",Tags:["wooden_support_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_support","minecraft:enchantment_glint_override":false}}}
execute at @s if entity @s[tag=valid] run fill ~ ~ ~ ~ ~1 ~ barrier
execute at @s if entity @s[tag=valid] run setblock ~ ~2 ~ end_rod[facing=down]
execute at @s if entity @s[tag=valid] run kill @s
execute at @s if entity @s[tag=valid] run return 0

execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_decor_placement run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_support:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_support"]},"minecraft:item_model":"minecraft:wooden_pillar","minecraft:item_name":'Wooden Pillar',"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_decor_placement run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_decor_placement run kill @s
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #valid_decor_placement run return 0

execute unless entity @s[tag=valid] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_support:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_support"]},"minecraft:item_model":"minecraft:wooden_pillar","minecraft:item_name":'Wooden Pillar',"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] run kill @s
execute unless entity @s[tag=valid] run return 0
