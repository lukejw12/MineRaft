
scoreboard players set @s nutrition_value 0
scoreboard players set @s saturation_value 0

data modify storage minecraft:temp stew_name set value []
data modify storage minecraft:temp effects set value []
data modify storage minecraft:temp effect_name set value []
data remove storage minecraft:temp effect_name_1
execute store result score #cooking_check temp run scoreboard players get @s cooking
scoreboard players set #temp temp 0
# Kelp (1)
scoreboard players operation #temp temp = #cooking_check temp
scoreboard players operation #temp temp %= #2 dummy
execute if score #temp temp matches 1 run scoreboard players add @s nutrition_value 4
execute if score #temp temp matches 1 run scoreboard players add @s saturation_value 10
execute if score #temp temp matches 1 run data modify storage minecraft:temp stew_name append value "Hearty"

# Dried Kelp (2)
scoreboard players operation #temp temp = #cooking_check temp
scoreboard players operation #temp temp /= #2 dummy
scoreboard players operation #temp temp %= #2 dummy
execute if score #temp temp matches 1 run scoreboard players add @s nutrition_value 1
execute if score #temp temp matches 1 run scoreboard players add @s saturation_value 20
execute if score #temp temp matches 1 run data modify storage minecraft:temp stew_name append value "Herbal"
execute if score #temp temp matches 1 run data modify storage minecraft:temp effects append value {id:"minecraft:speed",duration:300,amplifier:0}
execute if score #temp temp matches 1 run data modify storage minecraft:temp effect_name append value "Speed"

# Sweet Berries (4)
scoreboard players operation #temp temp = #cooking_check temp
scoreboard players operation #temp temp /= #4 dummy
scoreboard players operation #temp temp %= #2 dummy
execute if score #temp temp matches 1 run scoreboard players add @s nutrition_value 1
execute if score #temp temp matches 1 run scoreboard players add @s saturation_value 10
execute if score #temp temp matches 1 run data modify storage minecraft:temp stew_name append value "Sweet"
execute if score #temp temp matches 1 run data modify storage minecraft:temp effects append value {id:"minecraft:regeneration",duration:60,amplifier:0}
execute if score #temp temp matches 1 run data modify storage minecraft:temp effect_name append value "Regeneration"

# Cooked Cod (8)
scoreboard players operation #temp temp = #cooking_check temp
scoreboard players operation #temp temp /= #8 dummy
scoreboard players operation #temp temp %= #2 dummy
execute if score #temp temp matches 1 run scoreboard players add @s nutrition_value 5
execute if score #temp temp matches 1 run scoreboard players add @s saturation_value 20
execute if score #temp temp matches 1 run data modify storage minecraft:temp stew_name append value "Satisfying"

# Grilled Shark (16)
scoreboard players operation #temp temp = #cooking_check temp
scoreboard players operation #temp temp /= #16 dummy
scoreboard players operation #temp temp %= #2 dummy
execute if score #temp temp matches 1 run scoreboard players add @s nutrition_value 1
execute if score #temp temp matches 1 run scoreboard players add @s saturation_value 20
execute if score #temp temp matches 1 run data modify storage minecraft:temp stew_name append value "Savory"
execute if score #temp temp matches 1 run data modify storage minecraft:temp effects append value {id:"minecraft:strength",duration:600,amplifier:0}
execute if score #temp temp matches 1 run data modify storage minecraft:temp effect_name append value "Strength"

# Bread (32)
scoreboard players operation #temp temp = #cooking_check temp
scoreboard players operation #temp temp /= #32 dummy
scoreboard players operation #temp temp %= #2 dummy
execute if score #temp temp matches 1 run scoreboard players add @s nutrition_value 6
execute if score #temp temp matches 1 run scoreboard players add @s saturation_value 80
execute if score #temp temp matches 1 run data modify storage minecraft:temp stew_name append value "Filling"

execute store result storage minecraft:temp nutrition int 1 run scoreboard players get @s nutrition_value
execute store result storage minecraft:temp saturation float 0.1 run scoreboard players get @s saturation_value
function mineraft:raft_utility/cooking_pot/build_name
function mineraft:raft_utility/cooking_pot/build_effects
execute store result score #effect_count temp run data get storage minecraft:temp effects
function mineraft:raft_utility/cooking_pot/generate_stew_with_effects with storage minecraft:temp
function mineraft:raft_utility/cooking_pot/generate_stew_no_effects with storage minecraft:temp
