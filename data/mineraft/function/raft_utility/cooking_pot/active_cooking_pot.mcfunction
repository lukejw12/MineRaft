execute unless score @s cooking matches 0.. run scoreboard players set @s cooking 0
execute unless block ~ ~ ~ cauldron run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_facade]
execute unless block ~ ~ ~ cauldron run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_interact]
execute unless block ~ ~ ~ cauldron run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{cooking_pot_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["cooking_pot"]},"minecraft:item_model":"minecraft:cooking_pot","minecraft:item_name":{"translate":"item.mineraft.cooking_pot","fallback":"Cooking Pot"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ cauldron run kill @s
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_facade]
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_interact]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{cooking_pot_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["cooking_pot"]},"minecraft:item_model":"minecraft:cooking_pot","minecraft:item_name":{"translate":"item.mineraft.cooking_pot","fallback":"Cooking Pot"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s