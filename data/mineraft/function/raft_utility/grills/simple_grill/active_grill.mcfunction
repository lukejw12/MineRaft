execute unless block ~ ~ ~ blast_furnace run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=simple_grill_facade]
execute unless block ~ ~ ~ blast_furnace run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{simple_grill_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["water_purifier"]},"minecraft:item_model":"minecraft:water_purifier","minecraft:item_name":{"translate":"item.minecraft.water_purifier","fallback":"Water Purifier"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ blast_furnace run kill @s[type=marker,tag=simple_grill_active]

execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=simple_grill_facade]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{simple_grill_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["water_purifier"]},"minecraft:item_model":"minecraft:water_purifier","minecraft:item_name":{"translate":"item.minecraft.water_purifier","fallback":"Water Purifier"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s[type=marker,tag=simple_grill_active]
data merge block ~ ~ ~ {CustomName:'Simple Grill'}
scoreboard players set @s simple_grill 0
execute unless data block ~ ~ ~ {cooking_time_spent:0s} run scoreboard players set @s simple_grill 1
execute if score @s simple_grill matches 1 run particle flame ~ ~0.3 ~ 0 0 0 0.01 2 force