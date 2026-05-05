execute if entity @s[type=interaction] run function sailing_physics:movement/read_scores
execute if entity @s[type=armor_stand] run function sailing_physics:movement/read_scores
execute unless entity @s[type=interaction] unless entity @s[type=armor_stand] run function sailing_physics:movement/read_nbt
scoreboard players operation #sp.wx sp.data = #sp.lx sp.data
scoreboard players operation #sp.wx sp.data += #sp.center_x sp.data
scoreboard players operation #sp.wz sp.data = #sp.lz sp.data
scoreboard players operation #sp.wz sp.data += #sp.center_z sp.data
execute store result storage sailing_physics:temp x double 0.001 run scoreboard players get #sp.wx sp.data
execute store result storage sailing_physics:temp y double 0.001 run scoreboard players get #sp.ly sp.data
execute store result storage sailing_physics:temp z double 0.001 run scoreboard players get #sp.wz sp.data
function sailing_physics:movement/tp_entity with storage sailing_physics:temp
