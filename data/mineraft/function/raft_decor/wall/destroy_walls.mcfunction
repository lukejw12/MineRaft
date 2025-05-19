execute as @e[type=item_display,tag=thin_wooden_wall_facade,distance=..1.5] run kill @s
execute if entity @e[tag=thin_wooden_wall_active,distance=..1.5] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{thin_wooden_wall:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["thin_wooden_wall"]},"minecraft:item_model":"minecraft:thin_wooden_wall_item","minecraft:item_name":{"translate":"item.mineraft.thin_wooden_wall","fallback":"Thin Wooden Wall"},"minecraft:rarity":"uncommon"}}}
execute if entity @e[tag=thin_wooden_wall_active,distance=..1.5] run playsound minecraft:block.wood.break block @a[distance=..10] ~ ~ ~ 1 1
execute if entity @e[tag=thin_wooden_wall_active,distance=..1.5] run kill @e[tag=thin_wooden_wall_active,distance=..1.5]

execute as @e[type=item_display,tag=solid_wooden_wall_facade,distance=..1.5] run kill @s
execute if entity @e[tag=solid_wooden_wall_active,tag=facing_north_south,distance=..1.5] run fill ~-1 ~ ~0 ~1 ~2 ~0 air replace barrier
execute if entity @e[tag=solid_wooden_wall_active,tag=facing_east_west,distance=..1.5] run fill ~0 ~ ~-1 ~0 ~2 ~1 air replace barrier
execute if entity @e[tag=solid_wooden_wall_active,distance=..1.5] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{solid_wooden_wall:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["solid_wooden_wall"]},"minecraft:item_model":"minecraft:solid_wooden_wall_item","minecraft:item_name":{"translate":"item.mineraft.solid_wooden_wall","fallback":"Solid Wooden Wall"},"minecraft:rarity":"uncommon"}}}
execute if entity @e[tag=solid_wooden_wall_active,distance=..1.5] run playsound minecraft:block.wood.break block @a[distance=..10] ~ ~ ~ 1 1
execute if entity @e[tag=solid_wooden_wall_active,distance=..1.5] run kill @e[tag=solid_wooden_wall_active,distance=..1.5]

scoreboard players set #destroyed hammer_helper 1
