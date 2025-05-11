execute as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] if score @s ingredient_count matches 3.. run return 0

# Kelp (adds 1 to cooking score)
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:kelp"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:kelp"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:kelp"}}] run clear @s minecraft:kelp 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:kelp"}}] run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Dried Kelp (adds 2 to cooking score)
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:dried_kelp"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 2
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:dried_kelp"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:dried_kelp"}}] run clear @s minecraft:dried_kelp 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:dried_kelp"}}] run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Sweet Berries (adds 4 to cooking score)
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 4
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] run clear @s minecraft:sweet_berries 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Cooked Cod (adds 8 to cooking score)
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 8
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] run clear @s minecraft:cooked_cod 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:cooked_cod"}}] run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Grilled Shark (netherite_scrap) (adds 16 to cooking score)
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_scrap"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 16
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_scrap"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_scrap"}}] run clear @s minecraft:netherite_scrap 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_scrap"}}] run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Bread (adds 32 to cooking score)
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:bread"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 32
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:bread"}}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:bread"}}] run clear @s minecraft:bread 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:bread"}}] run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5
