$data modify storage mineraft:commands item set value "$(item)"
$data modify storage mineraft:commands type set value "$(type)"
$data modify storage mineraft:commands name set value "$(name)"

execute if data storage mineraft:commands {item:"builders_hammer"} run give @s stick[!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.hammer:1b},item_model="mineraft:items/tools/builders_hammer"]

execute if data storage mineraft:commands {item:"cup"} run give @p stone[!food,consumable={consume_seconds:9999,animation:"block",sound:"intentionally_empty",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"intentionally_empty"}]},custom_data={mr.pail-empty:1b},item_model="mineraft:items/crafting_materials/cup/empty_cup"]

execute if data storage mineraft:commands {item:"wall"} run function mineraft:core/utils/commands/give with storage mineraft:commands
execute if data storage mineraft:commands {item:"foundation"} run function mineraft:core/utils/commands/give with storage mineraft:commands
execute if data storage mineraft:commands {item:"smeltery"} run function mineraft:core/utils/commands/give with storage mineraft:commands
execute if data storage mineraft:commands {item:"purifier"} run function mineraft:core/utils/commands/give with storage mineraft:commands
execute if data storage mineraft:commands {item:"net"} run function mineraft:core/utils/commands/give with storage mineraft:commands
execute if data storage mineraft:commands {item:"support"} run function mineraft:core/utils/commands/give with storage mineraft:commands
execute if data storage mineraft:commands {item:"platform"} run function mineraft:core/utils/commands/give with storage mineraft:commands
execute if data storage mineraft:commands {item:"stairs"} run function mineraft:core/utils/commands/give with storage mineraft:commands

#/function mineraft:core/utils/commands {item:"builders_hammer",type:""}
#/function mineraft:core/utils/commands {item:"stairs",type:"solid_wooden",name:"Solid Wooden"}