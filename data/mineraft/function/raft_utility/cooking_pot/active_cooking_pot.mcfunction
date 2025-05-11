# raft_utility/cooking_pot/active_cooking_pot.mcfunction
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

# Handle hammer interaction
execute as @e[type=minecraft:interaction,tag=cooking_pot_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click

# Handle adding ingredients
execute as @e[type=minecraft:interaction,tag=cooking_pot_interact] if data entity @s interaction run function mineraft:raft_utility/cooking_pot/add_ingredient

# Check for cooking with empty bowl
execute as @e[type=minecraft:interaction,tag=cooking_pot_interact] if data entity @s interaction on target if items entity @s weapon.mainhand bowl run function mineraft:raft_utility/cooking_pot/cook_stew

execute if data entity @e[type=minecraft:interaction,tag=cooking_pot_interact,limit=1] interaction run data remove entity @e[type=minecraft:interaction,tag=cooking_pot_interact,limit=1] interaction