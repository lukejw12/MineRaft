scoreboard players operation $x player_motion.api.launch = #sp.push_x sp.data
scoreboard players set $y player_motion.api.launch 0
scoreboard players operation $z player_motion.api.launch = #sp.push_z sp.data
execute unless predicate sailing_physics:on_ground run scoreboard players operation $x player_motion.api.launch = #sp.push_ax sp.data
execute unless predicate sailing_physics:on_ground run scoreboard players operation $z player_motion.api.launch = #sp.push_az sp.data
function player_motion:api/launch_global_xyz
