
execute unless block ~ ~ ~ #possible_platform_center run fill ~1 ~ ~1 ~-1 ~ ~-1 air
execute unless block ~ ~ ~ #possible_platform_center run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_platform:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_platform"]},"minecraft:item_model":"minecraft:wooden_platform_it","minecraft:item_name":'Wooden Platform',"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ #possible_platform_center run particle block_crumble{block_state:"minecraft:stripped_spruce_wood"} ~ ~ ~ 0.8 0.3 0.8 1 40 normal
execute unless block ~ ~ ~ #possible_platform_center run playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5
execute unless block ~ ~ ~ #possible_platform_center run kill @e[tag=wooden_platform_facade,distance=..1]
execute unless block ~ ~ ~ #possible_platform_center run kill @s
execute unless block ~ ~ ~ #possible_platform_center run return 0


execute unless block ~ ~ ~ #pillar_support unless block ~ ~ ~3 #pillar_support unless block ~ ~ ~-3 #pillar_support unless block ~3 ~ ~ #pillar_support unless block ~-3 ~ ~ #pillar_support run fill ~1 ~ ~1 ~-1 ~ ~-1 air
execute unless block ~ ~ ~ #pillar_support unless block ~ ~ ~3 #pillar_support unless block ~ ~ ~-3 #pillar_support unless block ~3 ~ ~ #pillar_support unless block ~-3 ~ ~ #pillar_support run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_platform:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_platform"]},"minecraft:item_model":"minecraft:wooden_platform_it","minecraft:item_name":'Wooden Platform',"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ #pillar_support unless block ~ ~ ~3 #pillar_support unless block ~ ~ ~-3 #pillar_support unless block ~3 ~ ~ #pillar_support unless block ~-3 ~ ~ #pillar_support run particle block_crumble{block_state:"minecraft:stripped_spruce_wood"} ~ ~ ~ 0.8 0.3 0.8 1 40 normal
execute unless block ~ ~ ~ #pillar_support unless block ~ ~ ~3 #pillar_support unless block ~ ~ ~-3 #pillar_support unless block ~3 ~ ~ #pillar_support unless block ~-3 ~ ~ #pillar_support run playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5
execute unless block ~ ~ ~ #pillar_support unless block ~ ~ ~3 #pillar_support unless block ~ ~ ~-3 #pillar_support unless block ~3 ~ ~ #pillar_support unless block ~-3 ~ ~ #pillar_support run kill @e[tag=wooden_platform_facade,distance=..1]
execute unless block ~ ~ ~ #pillar_support unless block ~ ~ ~3 #pillar_support unless block ~ ~ ~-3 #pillar_support unless block ~3 ~ ~ #pillar_support unless block ~-3 ~ ~ #pillar_support run kill @s