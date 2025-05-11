
execute if data storage minecraft:temp stew_name[0] run data modify storage minecraft:temp name_1 set from storage minecraft:temp stew_name[0]
execute if data storage minecraft:temp stew_name[1] run data modify storage minecraft:temp name_2 set from storage minecraft:temp stew_name[1]
execute if data storage minecraft:temp stew_name[2] run data modify storage minecraft:temp name_3 set from storage minecraft:temp stew_name[2]

execute store result score #name_count temp run data get storage minecraft:temp stew_name

execute if score #name_count temp matches 1 run function mineraft:raft_utility/cooking_pot/build_name_1 with storage minecraft:temp
execute if score #name_count temp matches 2 run function mineraft:raft_utility/cooking_pot/build_name_2 with storage minecraft:temp
execute if score #name_count temp matches 3 run function mineraft:raft_utility/cooking_pot/build_name_3 with storage minecraft:temp