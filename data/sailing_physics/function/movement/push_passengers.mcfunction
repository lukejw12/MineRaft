scoreboard players operation #sp.push_x sp.data = #sp.vx sp.data
scoreboard players operation #sp.push_x sp.data *= #push_scale sp.const
scoreboard players operation #sp.ff sp.data = #sp.dvx sp.data
scoreboard players operation #sp.ff sp.data *= #ff_scale sp.const
scoreboard players operation #sp.push_x sp.data += #sp.ff sp.data
scoreboard players operation #sp.push_x sp.data += #50 sp.const
scoreboard players operation #sp.push_x sp.data /= #push_div sp.const
scoreboard players operation #sp.push_z sp.data = #sp.vz sp.data
scoreboard players operation #sp.push_z sp.data *= #push_scale sp.const
scoreboard players operation #sp.ff sp.data = #sp.dvz sp.data
scoreboard players operation #sp.ff sp.data *= #ff_scale sp.const
scoreboard players operation #sp.push_z sp.data += #sp.ff sp.data
scoreboard players operation #sp.push_z sp.data += #50 sp.const
scoreboard players operation #sp.push_z sp.data /= #push_div sp.const
function sailing_physics:movement/push_air_scale
tag @a remove sp.carried

execute as @a[gamemode=!spectator] at @s unless predicate sailing_physics:is_riding unless predicate sailing_physics:is_flying if function sailing_physics:movement/on_deck run function sailing_physics:movement/push_one
execute as @a[tag=!sp.carried] run function sailing_physics:movement/carry_stop
