data remove storage minecraft:temp name_1
data remove storage minecraft:temp name_2
data remove storage minecraft:temp name_3
data remove storage minecraft:temp final_name
scoreboard players set @s nutrition_value 0
scoreboard players set @s saturation_value 0

data modify storage minecraft:temp stew_name set value []
data modify storage minecraft:temp effects set value []
data modify storage minecraft:temp effect_name set value []
data remove storage minecraft:temp effect_name_1

scoreboard players set #very_bonus temp 0
execute if score @s kelp_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s dried_kelp_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s berries_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s cod_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s shark_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s bread_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s raw_cod_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s raw_shark_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s water_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s pure_water_count matches 3 run scoreboard players set #very_bonus temp 1
execute if score @s thatch_count matches 3 run scoreboard players set #very_bonus temp 1


# Kelp - Hearty
execute if score @s kelp_count matches 1.. run scoreboard players add @s nutrition_value 4
execute if score @s kelp_count matches 1.. run scoreboard players add @s saturation_value 10
execute if score @s kelp_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Hearty"
execute if score @s kelp_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Hearty"

# Dried Kelp - Herbal (Speed)
execute if score @s dried_kelp_count matches 1.. run scoreboard players add @s nutrition_value 1
execute if score @s dried_kelp_count matches 1.. run scoreboard players add @s saturation_value 20
execute if score @s dried_kelp_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Herbal"
execute if score @s dried_kelp_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Herbal"
execute if score @s dried_kelp_count matches 1.. run data modify storage minecraft:temp effects append value {id:"minecraft:speed",duration:300,amplifier:0}
execute if score @s dried_kelp_count matches 1.. run data modify storage minecraft:temp effect_name append value "Speed"

# Sweet Berries - Sweet (Regeneration)
execute if score @s berries_count matches 1.. run scoreboard players add @s nutrition_value 1
execute if score @s berries_count matches 1.. run scoreboard players add @s saturation_value 10
execute if score @s berries_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Sweet"
execute if score @s berries_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Sweet"
execute if score @s berries_count matches 1.. run data modify storage minecraft:temp effects append value {id:"minecraft:regeneration",duration:60,amplifier:0}
execute if score @s berries_count matches 1.. run data modify storage minecraft:temp effect_name append value "Regeneration"

# Cooked Cod - Satisfying
execute if score @s cod_count matches 1.. run scoreboard players add @s nutrition_value 5
execute if score @s cod_count matches 1.. run scoreboard players add @s saturation_value 20
execute if score @s cod_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Satisfying"
execute if score @s cod_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Satisfying"

# Grilled Shark - Savory (Strength)
execute if score @s shark_count matches 1.. run scoreboard players add @s nutrition_value 1
execute if score @s shark_count matches 1.. run scoreboard players add @s saturation_value 20
execute if score @s shark_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Savory"
execute if score @s shark_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Savory"
execute if score @s shark_count matches 1.. run data modify storage minecraft:temp effects append value {id:"minecraft:strength",duration:600,amplifier:0}
execute if score @s shark_count matches 1.. run data modify storage minecraft:temp effect_name append value "Strength"

# Bread - Filling
execute if score @s bread_count matches 1.. run scoreboard players add @s nutrition_value 6
execute if score @s bread_count matches 1.. run scoreboard players add @s saturation_value 80
execute if score @s bread_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Filling"
execute if score @s bread_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Filling"

# Raw Cod - Risky (Weakness)
execute if score @s raw_cod_count matches 1.. run scoreboard players add @s nutrition_value 4
execute if score @s raw_cod_count matches 1.. run scoreboard players add @s saturation_value 5
execute if score @s raw_cod_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Risky"
execute if score @s raw_cod_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Risky"
execute if score @s raw_cod_count matches 1.. run data modify storage minecraft:temp effects append value {id:"minecraft:weakness",duration:200,amplifier:0}
execute if score @s raw_cod_count matches 1.. run data modify storage minecraft:temp effect_name append value "Weakness"

# Raw Shark - Dangerous (Nausea)
execute if score @s raw_shark_count matches 1.. run scoreboard players add @s nutrition_value 2
execute if score @s raw_shark_count matches 1.. run scoreboard players add @s saturation_value 5
execute if score @s raw_shark_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Dangerous"
execute if score @s raw_shark_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Dangerous"
execute if score @s raw_shark_count matches 1.. run data modify storage minecraft:temp effects append value {id:"minecraft:nausea",duration:300,amplifier:0}
execute if score @s raw_shark_count matches 1.. run data modify storage minecraft:temp effect_name append value "Nausea"

# Water - Watery (reduces saturation)
execute if score @s water_count matches 1.. run scoreboard players add @s nutrition_value 10
execute if score @s water_count matches 1.. run scoreboard players remove @s saturation_value 20
execute if score @s water_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Watery"
execute if score @s water_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Watery"

# Purified Water - Refined (increases saturation)
execute if score @s pure_water_count matches 1.. run scoreboard players remove @s nutrition_value 8
execute if score @s pure_water_count matches 1.. run scoreboard players add @s saturation_value 100
execute if score @s pure_water_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Refined"
execute if score @s pure_water_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Refined"

# Thatch - Energizing (Jump Boost)
execute if score @s thatch_count matches 1.. run scoreboard players add @s nutrition_value 2
execute if score @s thatch_count matches 1.. run scoreboard players add @s saturation_value 15
execute if score @s thatch_count matches 1.. if score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Very Energizing"
execute if score @s thatch_count matches 1.. unless score #very_bonus temp matches 1 run data modify storage minecraft:temp stew_name append value "Energizing"
execute if score @s thatch_count matches 1.. run data modify storage minecraft:temp effects append value {id:"minecraft:jump_boost",duration:600,amplifier:1}
execute if score @s thatch_count matches 1.. run data modify storage minecraft:temp effect_name append value "Jump Boost"

execute if score #very_bonus temp matches 1 run scoreboard players operation @s nutrition_value *= #2 dummy

execute if score @s saturation_value matches ..-1 run scoreboard players set @s saturation_value 0
execute if score @s nutrition_value matches ..-1 run scoreboard players set @s nutrition_value 1

execute store result storage minecraft:temp nutrition int 1 run scoreboard players get @s nutrition_value
execute store result storage minecraft:temp saturation float 0.1 run scoreboard players get @s saturation_value
function mineraft:raft_utility/cooking_pot/build_name
function mineraft:raft_utility/cooking_pot/build_effects
execute store result score #effect_count temp run data get storage minecraft:temp effects

execute unless entity @s[tag=stew_generated] if score #effect_count temp matches 1.. as @a[tag=cooking_collector,limit=1] run function mineraft:raft_utility/cooking_pot/generate_stew_with_effects with storage minecraft:temp
execute unless entity @s[tag=stew_generated] if score #effect_count temp matches 0 as @a[tag=cooking_collector,limit=1] run function mineraft:raft_utility/cooking_pot/generate_stew_no_effects with storage minecraft:temp
tag @s add stew_generated