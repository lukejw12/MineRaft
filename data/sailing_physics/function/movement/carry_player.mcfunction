tag @s add sp.carried
execute unless items entity @s saddle *[custom_data~{sp_carry:1b}] run function sailing_physics:movement/carry_equip
scoreboard players operation #cx sp.data = #sp.push_x sp.data
scoreboard players operation #cz sp.data = #sp.push_z sp.data
execute unless predicate sailing_physics:on_ground run scoreboard players operation #cx sp.data = #sp.push_ax sp.data
execute unless predicate sailing_physics:on_ground run scoreboard players operation #cz sp.data = #sp.push_az sp.data
function sailing_physics:movement/carry_levels
