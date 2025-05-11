
execute unless score @s cooking matches 0.. run scoreboard players set @s cooking 0
execute unless score @s cooking_time matches 0.. run scoreboard players set @s cooking_time 0
execute unless score @s ingredient_count matches 0.. run scoreboard players set @s ingredient_count 0

execute unless block ~ ~ ~ cauldron run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_facade]
execute unless block ~ ~ ~ cauldron run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_interact]
execute unless block ~ ~ ~ cauldron run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{cooking_pot_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["cooking_pot"]},"minecraft:item_model":"minecraft:cooking_pot","minecraft:item_name":{"translate":"item.mineraft.cooking_pot","fallback":"Cooking Pot"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ cauldron run kill @s

execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_facade]
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_interact]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{cooking_pot_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["cooking_pot"]},"minecraft:item_model":"minecraft:cooking_pot","minecraft:item_name":{"translate":"item.mineraft.cooking_pot","fallback":"Cooking Pot"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s

tag @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_facade] add this_pot_facade
tag @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=cooking_pot_interact] add this_pot_interact

execute as @e[type=minecraft:interaction,tag=this_pot_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click

tag @e[type=marker,tag=cooking_pot_active,distance=..0.5,sort=nearest,limit=1] add this_pot_marker

execute as @e[type=minecraft:interaction,tag=this_pot_interact] if data entity @s interaction on target if items entity @s weapon.mainhand bowl run function mineraft:raft_utility/cooking_pot/cook_stew

execute as @e[type=minecraft:interaction,tag=this_pot_interact] if data entity @s interaction if score @e[type=marker,tag=this_pot_marker,limit=1] ingredient_count matches ..2 run function mineraft:raft_utility/cooking_pot/add_ingredient

execute if data entity @e[type=minecraft:interaction,tag=this_pot_interact,limit=1] interaction run data remove entity @e[type=minecraft:interaction,tag=this_pot_interact,limit=1] interaction

tag @e[tag=this_pot_facade] remove this_pot_facade
tag @e[tag=this_pot_interact] remove this_pot_interact
tag @e[tag=this_pot_marker] remove this_pot_marker