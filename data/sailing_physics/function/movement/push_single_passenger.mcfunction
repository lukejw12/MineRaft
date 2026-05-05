scoreboard players operation $x player_motion.api.launch = #sp.push_x sp.data
scoreboard players set $y player_motion.api.launch 0
scoreboard players operation $z player_motion.api.launch = #sp.push_z sp.data
execute unless predicate sailing_physics:on_ground run function sailing_physics:movement/push_air_scale
function player_motion:api/launch_global_xyz
