execute unless block ~ ~ ~ cauldron run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_facade]
execute unless block ~ ~ ~ cauldron run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_interact]
execute unless block ~ ~ ~ cauldron run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{cooking_pot_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["cooking_pot"]},"minecraft:item_model":"minecraft:cooking_pot","minecraft:item_name":{"translate":"item.mineraft.cooking_pot","fallback":"Cooking Pot"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ cauldron run kill @s
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_facade]
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_interact]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{cooking_pot_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["cooking_pot"]},"minecraft:item_model":"minecraft:cooking_pot","minecraft:item_name":{"translate":"item.mineraft.cooking_pot","fallback":"Cooking Pot"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s
tag @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_facade] add this_facade
tag @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_interact] add this_interact
execute as @e[tag=this_interact,type=interaction,distance=0..] run function mineraft:raft_utility/cooking_pot/interaction/process_interaction
execute unless score @s ingredient_count matches 1.. store result score @s ingredient_count if data entity @s data.Ingredients[]
execute if score @s ingredient_count matches 1.. if score @s cooking matches 0 run scoreboard players set @s cooking 1
execute if score @s cooking matches 1.. run function mineraft:raft_utility/cooking_pot/cooking/cooking_timer
execute if score @s ingredient_count matches 1 run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=cooking_pot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:stone"}}
execute if score @s ingredient_count matches 2 run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=cooking_pot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:dirt"}}
execute if score @s ingredient_count matches 3.. run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=cooking_pot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:andesite"}}
tag @e[tag=this_facade,type=item_display,distance=0..] remove this_facade
tag @e[tag=this_interact,type=interaction,distance=0..] remove this_interact