tag @s add resources

data remove entity @s Item.components."minecraft:custom_data".resources
execute store result score @s temp run data get entity @s Item.components."minecraft:custom_data"
execute if score @s temp matches 0 run data remove entity @s Item.components."minecraft:custom_data"