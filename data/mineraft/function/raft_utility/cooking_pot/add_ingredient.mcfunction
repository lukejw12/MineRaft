
# Kelp (adds 1 to cooking score)
execute on target if items entity @s weapon.mainhand minecraft:kelp as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 1
execute on target if items entity @s weapon.mainhand minecraft:kelp as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s kelp_count 1
execute on target if items entity @s weapon.mainhand minecraft:kelp as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:kelp run clear @s minecraft:kelp 1
execute on target if items entity @s weapon.mainhand minecraft:kelp run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Dried Kelp (adds 2 to cooking score)
execute on target if items entity @s weapon.mainhand minecraft:dried_kelp as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 2
execute on target if items entity @s weapon.mainhand minecraft:dried_kelp as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s dried_kelp_count 1
execute on target if items entity @s weapon.mainhand minecraft:dried_kelp as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:dried_kelp run clear @s minecraft:dried_kelp 1
execute on target if items entity @s weapon.mainhand minecraft:dried_kelp run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Sweet Berries (adds 4 to cooking score)
execute on target if items entity @s weapon.mainhand minecraft:sweet_berries as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 4
execute on target if items entity @s weapon.mainhand minecraft:sweet_berries as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s berries_count 1
execute on target if items entity @s weapon.mainhand minecraft:sweet_berries as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:sweet_berries run clear @s minecraft:sweet_berries 1
execute on target if items entity @s weapon.mainhand minecraft:sweet_berries run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Cooked Cod (adds 8 to cooking score)
execute on target if items entity @s weapon.mainhand minecraft:cooked_cod as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 8
execute on target if items entity @s weapon.mainhand minecraft:cooked_cod as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cod_count 1
execute on target if items entity @s weapon.mainhand minecraft:cooked_cod as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:cooked_cod run clear @s minecraft:cooked_cod 1
execute on target if items entity @s weapon.mainhand minecraft:cooked_cod run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Grilled Shark (netherite_scrap) (adds 16 to cooking score)
execute on target if items entity @s weapon.mainhand minecraft:netherite_scrap as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 16
execute on target if items entity @s weapon.mainhand minecraft:netherite_scrap as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s shark_count 1
execute on target if items entity @s weapon.mainhand minecraft:netherite_scrap as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:netherite_scrap run clear @s minecraft:netherite_scrap 1
execute on target if items entity @s weapon.mainhand minecraft:netherite_scrap run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Bread (adds 32 to cooking score)
execute on target if items entity @s weapon.mainhand minecraft:bread as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 32
execute on target if items entity @s weapon.mainhand minecraft:bread as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s bread_count 1
execute on target if items entity @s weapon.mainhand minecraft:bread as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:bread run clear @s minecraft:bread 1
execute on target if items entity @s weapon.mainhand minecraft:bread run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Raw Cod (adds 7 to cooking score) - debuff
execute on target if items entity @s weapon.mainhand minecraft:cod as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 7
execute on target if items entity @s weapon.mainhand minecraft:cod as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s raw_cod_count 1
execute on target if items entity @s weapon.mainhand minecraft:cod as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:cod run clear @s minecraft:cod 1
execute on target if items entity @s weapon.mainhand minecraft:cod run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Raw Shark (adds 15 to cooking score) - debuff
execute on target if items entity @s weapon.mainhand minecraft:phantom_membrane as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 15
execute on target if items entity @s weapon.mainhand minecraft:phantom_membrane as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s raw_shark_count 1
execute on target if items entity @s weapon.mainhand minecraft:phantom_membrane as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:phantom_membrane run clear @s minecraft:phantom_membrane 1
execute on target if items entity @s weapon.mainhand minecraft:phantom_membrane run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Water (adds 6 to cooking score) - reduces saturation
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 6
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s water_count 1
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run clear @s minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] 1
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run give @s glass_bottle
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:potion_contents={potion:"minecraft:water"}] run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Purified Water (adds 9 to cooking score) - increases saturation
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data={pure_water:1b}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 9
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data={pure_water:1b}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s pure_water_count 1
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data={pure_water:1b}] as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data={pure_water:1b}] run clear @s minecraft:potion[minecraft:custom_data={pure_water:1b}] 1
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data={pure_water:1b}] run give @s glass_bottle
execute on target if items entity @s weapon.mainhand minecraft:potion[minecraft:custom_data={pure_water:1b}] run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5

# Thatch (adds 11 to cooking score) - energy boost
execute on target if items entity @s weapon.mainhand minecraft:sugar_cane as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s cooking 11
execute on target if items entity @s weapon.mainhand minecraft:sugar_cane as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s thatch_count 1
execute on target if items entity @s weapon.mainhand minecraft:sugar_cane as @e[type=marker,tag=cooking_pot_active,limit=1,sort=nearest] run scoreboard players add @s ingredient_count 1
execute on target if items entity @s weapon.mainhand minecraft:sugar_cane run clear @s minecraft:sugar_cane 1
execute on target if items entity @s weapon.mainhand minecraft:sugar_cane run particle minecraft:bubble ~ ~0.5 ~ 0.1 0.1 0.1 0.1 5