execute if entity @e[tag=solid_wall_display,tag=facing_east_west,distance=..6] if block ~ ~-1 ~ #raft_materials if predicate mineraft:wall/placing_x_clear run tag @s add valid

execute if entity @s[tag=valid] run summon marker ~ ~ ~ {Tags:["solid_wooden_wall_active","facing_east_west"]}
execute if entity @s[tag=valid] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid] run summon item_display ~ ~0.3 ~ {item_display:"ground",Rotation:[90F,0F],Tags:["solid_wall_facade","facing_east_west"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blue_stained_glass",count:1,components:{"minecraft:item_model":"minecraft:solid_wooden_wall","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=valid] run fill ~-1 ~ ~ ~1 ~2 ~ blue_stained_glass replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0

execute if entity @e[tag=solid_wall_display,tag=facing_north_south,distance=..6] if block ~ ~-1 ~ #raft_materials if predicate mineraft:wall/placing_z_clear run tag @s add valid

execute if entity @s[tag=valid] run summon marker ~ ~ ~ {Tags:["solid_wooden_wall_active","facing_north_south"]}
execute if entity @s[tag=valid] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid] run summon item_display ~ ~0.3 ~ {item_display:"ground",Rotation:[0F,0F],Tags:["solid_wall_facade","facing_north_south"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blue_stained_glass",count:1,components:{"minecraft:item_model":"minecraft:solid_wooden_wall","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=valid] run fill ~ ~ ~-1 ~ ~2 ~1 blue_stained_glass replace air
execute if entity @s[tag=valid] run kill @s
execute if entity @s[tag=valid] run return 0

execute unless entity @s[tag=valid] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{solid_wooden_wall:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["solid_wooden_wall"]},"minecraft:item_model":"minecraft:solid_wooden_wall","minecraft:item_name":{"translate":"item.mineraft.solid_wooden_wall","fallback":"Solid Wooden Wall"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] run kill @s