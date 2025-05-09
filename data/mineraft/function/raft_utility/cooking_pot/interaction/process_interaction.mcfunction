execute if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click
execute if data entity @s interaction run tag @s add has_interaction
execute as @s[tag=has_interaction] at @s on target if items entity @s weapon.mainhand minecraft:kelp run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add add_kelp
execute as @s[tag=add_kelp] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run data modify entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] data.Ingredients append value {id:"minecraft:kelp",Descriptor:"Filling",Type:"Nutrition",NutritionValue:3,SaturationValue:1}
execute as @s[tag=add_kelp] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run scoreboard players add @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] ingredient_count 1
execute as @s[tag=add_kelp] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] on target run clear @s minecraft:kelp 1
execute as @s[tag=add_kelp] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run playsound minecraft:entity.item.pickup master @a[distance=..8] ~ ~ ~ 0.5 0.8
execute as @s[tag=add_kelp] run tag @s remove add_kelp
execute as @s[tag=has_interaction] at @s on target if items entity @s weapon.mainhand minecraft:dried_kelp run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add add_grilled_seaweed
execute as @s[tag=add_grilled_seaweed] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run data modify entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] data.Ingredients append value {id:"minecraft:dried_kelp",Descriptor:"Nourishing",Type:"Nutrition",NutritionValue:5,SaturationValue:2}
execute as @s[tag=add_grilled_seaweed] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run scoreboard players add @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] ingredient_count 1
execute as @s[tag=add_grilled_seaweed] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] on target run clear @s minecraft:dried_kelp 1
execute as @s[tag=add_grilled_seaweed] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run playsound minecraft:entity.item.pickup master @a[distance=..8] ~ ~ ~ 0.5 0.8
execute as @s[tag=add_grilled_seaweed] run tag @s remove add_grilled_seaweed
execute as @s[tag=has_interaction] at @s on target if items entity @s weapon.mainhand minecraft:cooked_cod run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add add_cooked_cod
execute as @s[tag=add_cooked_cod] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run data modify entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] data.Ingredients append value {id:"minecraft:cooked_cod",Descriptor:"Hearty",Type:"Nutrition",NutritionValue:7,SaturationValue:3}
execute as @s[tag=add_cooked_cod] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run scoreboard players add @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] ingredient_count 1
execute as @s[tag=add_cooked_cod] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] on target run clear @s minecraft:cooked_cod 1
execute as @s[tag=add_cooked_cod] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run playsound minecraft:entity.item.pickup master @a[distance=..8] ~ ~ ~ 0.5 0.8
execute as @s[tag=add_cooked_cod] run tag @s remove add_cooked_cod
execute as @s[tag=has_interaction] at @s on target if items entity @s weapon.mainhand minecraft:sweet_berries run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add add_sweet_berries
execute as @s[tag=add_sweet_berries] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run data modify entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] data.Ingredients append value {id:"minecraft:sweet_berries",Descriptor:"Sweet",Type:"Effect",Effect:"regeneration",Duration:200,Amplifier:0}
execute as @s[tag=add_sweet_berries] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run scoreboard players add @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] ingredient_count 1
execute as @s[tag=add_sweet_berries] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] on target run clear @s minecraft:sweet_berries 1
execute as @s[tag=add_sweet_berries] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run playsound minecraft:entity.item.pickup master @a[distance=..8] ~ ~ ~ 0.5 0.8
execute as @s[tag=add_sweet_berries] run tag @s remove add_sweet_berries
execute as @s[tag=has_interaction] at @s on target if items entity @s weapon.mainhand minecraft:bread run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add add_bread
execute as @s[tag=add_bread] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run data modify entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] data.Ingredients append value {id:"minecraft:bread",Descriptor:"Wholesome",Type:"Effect",Effect:"saturation",Duration:100,Amplifier:0}
execute as @s[tag=add_bread] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run scoreboard players add @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] ingredient_count 1
execute as @s[tag=add_bread] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] on target run clear @s minecraft:bread 1
execute as @s[tag=add_bread] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run playsound minecraft:entity.item.pickup master @a[distance=..8] ~ ~ ~ 0.5 0.8
execute as @s[tag=add_bread] run tag @s remove add_bread
execute as @s[tag=has_interaction] at @s on target if items entity @s weapon.mainhand minecraft:cooked_mutton run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add add_shark_meat
execute as @s[tag=add_shark_meat] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run data modify entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] data.Ingredients append value {id:"minecraft:cooked_mutton",Descriptor:"Savory",Type:"Effect",Effect:"strength",Duration:600,Amplifier:0}
execute as @s[tag=add_shark_meat] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run scoreboard players add @e[type=marker,distance=..0.5,tag=cooking_pot_active,limit=1] ingredient_count 1
execute as @s[tag=add_shark_meat] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] on target run clear @s minecraft:cooked_mutton 1
execute as @s[tag=add_shark_meat] at @s unless entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run playsound minecraft:entity.item.pickup master @a[distance=..8] ~ ~ ~ 0.5 0.8
execute as @s[tag=add_shark_meat] run tag @s remove add_shark_meat
execute as @s[tag=has_interaction] at @s on target if items entity @s weapon.mainhand minecraft:bowl run tag @e[tag=has_interaction,limit=1,sort=nearest,type=interaction,distance=0..] add bowl_click
execute as @s[tag=bowl_click] at @s if entity @e[type=marker,distance=..0.5,tag=cooking_pot_active,tag=ready] run function mineraft:raft_utility/cooking_pot/cooking/cook_stew
execute as @s[tag=bowl_click] run tag @s remove bowl_click
execute if data entity @s interaction run data remove entity @s interaction
tag @s remove has_interaction