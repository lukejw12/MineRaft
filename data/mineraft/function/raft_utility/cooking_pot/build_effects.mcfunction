data modify storage minecraft:temp final_effect set value {}
execute if data storage minecraft:temp effect_name[0] run data modify storage minecraft:temp effect_name_1 set from storage minecraft:temp effect_name[0]


function mineraft:raft_utility/cooking_pot/build_effect_name_1 with storage minecraft:temp
