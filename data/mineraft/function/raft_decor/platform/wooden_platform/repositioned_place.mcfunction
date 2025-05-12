execute if block ~ ~ ~ #pillar_support if block ~ ~ ~-1 #blocks if block ~ ~ ~1 #blocks if block ~1 ~ ~ #blocks if block ~-1 ~ ~ #blocks if block ~1 ~ ~-1 #blocks if block ~-1 ~ ~-1 #blocks if block ~1 ~ ~1 #blocks if block ~-1 ~ ~1 #blocks unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~ ~ ~ {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run summon item_display ~ ~0.99 ~ {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=valid] run fill ~1 ~ ~1 ~-1 ~ ~-1 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless block ~ ~ ~ #pillar_support if block ~ ~-1 ~-2 #blocks_w_e if block ~ ~-1 ~1 #pillar_support positioned ~ ~-1 ~-2 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] positioned ~ ~-1 ~-2 if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~ ~-1 ~-2 {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run summon item_display ~ ~-0.01 ~-2 {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_platform"}}}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-3 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless block ~ ~ ~ #pillar_support if block ~ ~-1 ~2 #blocks_w_e if block ~ ~-1 ~-1 #pillar_support positioned ~ ~-1 ~2 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] positioned ~ ~-1 ~2 if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~ ~-1 ~2 {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run summon item_display ~ ~-0.01 ~2 {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_platform"}}}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run fill ~1 ~-1 ~1 ~-1 ~-1 ~3 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless block ~ ~ ~ #pillar_support if block ~2 ~-1 ~ #blocks_w_e if block ~-1 ~-1 ~ #pillar_support positioned ~2 ~-1 ~ unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] positioned ~2 ~-1 ~ if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~2 ~-1 ~ {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run summon item_display ~2 ~-0.01 ~ {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_platform"}}}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run fill ~1 ~-1 ~1 ~3 ~-1 ~-1 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless block ~ ~ ~ #pillar_support if block ~-2 ~-1 ~ #blocks_w_e if block ~1 ~-1 ~ #pillar_support positioned ~-2 ~-1 ~ unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] positioned ~-2 ~-1 ~ if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~-2 ~-1 ~ {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run summon item_display ~-2 ~-0.01 ~ {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_platform"}}}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run fill ~1 ~-1 ~1 ~-3 ~-1 ~-1 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless block ~ ~ ~ #pillar_support if block ~ ~-1 ~-2 #blocks_w_e if block ~ ~-1 ~-2 #pillar_support positioned ~ ~-1 ~-2 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] positioned ~ ~-1 ~-2 if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~ ~-1 ~-2 {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run summon item_display ~ ~-0.01 ~-2 {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_platform"}}}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-3 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless block ~ ~ ~ #pillar_support if block ~ ~-1 ~2 #blocks_w_e if block ~ ~-1 ~2 #pillar_support positioned ~ ~-1 ~2 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] positioned ~ ~-1 ~2 if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~ ~-1 ~2 {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run summon item_display ~ ~-0.01 ~2 {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_platform"}}}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run fill ~1 ~-1 ~1 ~-1 ~-1 ~3 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless block ~ ~ ~ #pillar_support if block ~2 ~-1 ~ #blocks_w_e if block ~2 ~-1 ~ #pillar_support positioned ~2 ~-1 ~ unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] positioned ~2 ~-1 ~ if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~2 ~-1 ~ {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run summon item_display ~2 ~-0.01 ~ {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_platform"}}}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run fill ~1 ~-1 ~1 ~3 ~-1 ~-1 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless block ~ ~ ~ #pillar_support if block ~-2 ~-1 ~ #blocks_w_e if block ~-2 ~-1 ~ #pillar_support positioned ~-2 ~-1 ~ unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add valid_initial
execute if entity @s[tag=valid_initial] positioned ~-2 ~-1 ~ if block ~1 ~ ~ air if block ~-1 ~ ~ air if block ~ ~ ~1 air if block ~ ~ ~-1 air if block ~1 ~ ~1 air if block ~1 ~ ~-1 air if block ~-1 ~ ~1 air if block ~-1 ~ ~-1 air run tag @s add valid
execute if entity @s[tag=valid_initial,tag=!valid] run tag @s remove valid_initial

execute if entity @s[tag=valid] run summon marker ~-2 ~-1 ~ {Tags:["wooden_platform_active"]}
execute if entity @s[tag=valid] run summon item_display ~-2 ~-0.01 ~ {item_display:"ground",Tags:["wooden_platform_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_platform"}}}
execute if entity @s[tag=valid] run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute if entity @s[tag=valid] run fill ~1 ~-1 ~1 ~-3 ~-1 ~-1 barrier replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0


execute unless entity @s[tag=valid] unless block ~ ~ ~ #pillar_support run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_platform:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_platform"]},"minecraft:item_model":"minecraft:wooden_platform_it","minecraft:item_name":{"translate":"item.mineraft.wooden_platform","fallback":"Wooden Platform"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] unless block ~ ~ ~ #pillar_support run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] unless block ~ ~ ~ #pillar_support run kill @s
execute unless entity @s[tag=valid] unless block ~ ~ ~ #pillar_support run return 0

execute unless entity @s[tag=valid] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_platform:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_platform"]},"minecraft:item_model":"minecraft:wooden_platform_it","minecraft:item_name":{"translate":"item.mineraft.wooden_platform","fallback":"Wooden Platform"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] run kill @s
execute unless entity @s[tag=valid] run return 0