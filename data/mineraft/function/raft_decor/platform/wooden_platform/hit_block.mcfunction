scoreboard players set #hit wooden_platform 1

execute unless block ~ ~ ~ #pillar_support if block ~ ~ ~-2 #blocks_w_e if block ~ ~ ~1 #pillar_support positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute unless block ~ ~ ~ #pillar_support if block ~ ~ ~-2 #blocks_w_e if block ~ ~ ~-2 #pillar_support positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] positioned ~ ~ ~-2 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute unless block ~ ~ ~ #pillar_support if block ~ ~ ~2 #blocks_w_e if block ~ ~ ~-1 #pillar_support positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute unless block ~ ~ ~ #pillar_support if block ~ ~ ~2 #blocks_w_e if block ~ ~ ~2 #pillar_support positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] positioned ~ ~ ~2 align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute unless block ~ ~ ~ #pillar_support if block ~2 ~ ~ #blocks_w_e if block ~-1 ~ ~ #pillar_support positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute unless block ~ ~ ~ #pillar_support if block ~2 ~ ~ #blocks_w_e if block ~2 ~ ~ #pillar_support positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] positioned ~2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute unless block ~ ~ ~ #pillar_support if block ~-2 ~ ~ #blocks_w_e if block ~1 ~ ~ #pillar_support positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute unless block ~ ~ ~ #pillar_support if block ~-2 ~ ~ #blocks_w_e if block ~-2 ~ ~ #pillar_support positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wooden_platform_active,distance=..1] run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] positioned ~-2 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute if block ~ ~ ~ #pillar_support unless entity @e[tag=wooden_platform_active,distance=..1.3] if entity @s[y_rotation=-180..-135] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~-1 #blocks if block ~ ~ ~1 #blocks if block ~1 ~ ~ #blocks if block ~-1 ~ ~ #blocks if block ~1 ~ ~-1 #blocks if block ~-1 ~ ~-1 #blocks if block ~1 ~ ~1 #blocks if block ~-1 ~ ~1 #blocks run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute if block ~ ~ ~ #pillar_support unless entity @e[tag=wooden_platform_active,distance=..1.3] if entity @s[y_rotation=-135..-45] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~-1 #blocks if block ~ ~ ~1 #blocks if block ~1 ~ ~ #blocks if block ~-1 ~ ~ #blocks if block ~1 ~ ~-1 #blocks if block ~-1 ~ ~-1 #blocks if block ~1 ~ ~1 #blocks if block ~-1 ~ ~1 #blocks run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute if block ~ ~ ~ #pillar_support unless entity @e[tag=wooden_platform_active,distance=..1.3] if entity @s[y_rotation=-45..45] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~-1 #blocks if block ~ ~ ~1 #blocks if block ~1 ~ ~ #blocks if block ~-1 ~ ~ #blocks if block ~1 ~ ~-1 #blocks if block ~-1 ~ ~-1 #blocks if block ~1 ~ ~1 #blocks if block ~-1 ~ ~1 #blocks run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute if block ~ ~ ~ #pillar_support unless entity @e[tag=wooden_platform_active,distance=..1.3] if entity @s[y_rotation=45..135] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~-1 #blocks if block ~ ~ ~1 #blocks if block ~1 ~ ~ #blocks if block ~-1 ~ ~ #blocks if block ~1 ~ ~-1 #blocks if block ~-1 ~ ~-1 #blocks if block ~1 ~ ~1 #blocks if block ~-1 ~ ~1 #blocks run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute if block ~ ~ ~ #pillar_support unless entity @e[tag=wooden_platform_active,distance=..1.3] if entity @s[y_rotation=135..180] align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~-1 #blocks if block ~ ~ ~1 #blocks if block ~1 ~ ~ #blocks if block ~-1 ~ ~ #blocks if block ~1 ~ ~-1 #blocks if block ~-1 ~ ~-1 #blocks if block ~1 ~ ~1 #blocks if block ~-1 ~ ~1 #blocks run tag @s add display_valid_initial

execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~ air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~1 ~ ~-1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~1 air run tag @s add display_valid_invalid
execute if entity @s[tag=display_valid_initial] align xyz positioned ~0.5 ~ ~0.5 unless block ~-1 ~ ~-1 air run tag @s add display_valid_invalid

execute if entity @s[tag=display_valid_initial,tag=!display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:3329330,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=display_valid_initial,tag=display_valid_invalid] align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.99 ~ {Glowing:1b,item_display:"ground",Tags:["wooden_platform_display","displayed"],glow_color_override:16711680,brightness:{sky:15,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:wooden_platform","minecraft:enchantment_glint_override":false}}}

tag @s remove display_valid_initial
tag @s remove display_valid_invalid

execute as @e[tag=wooden_platform_display,tag=displayed] at @s unless entity @p[distance=..12] run kill @s