scoreboard players operation $x player_motion.api.launch = #sp.vx sp.data
scoreboard players operation $x player_motion.api.launch *= #push_air_scale sp.const
scoreboard players operation $x player_motion.api.launch /= #push_div sp.const
scoreboard players set $y player_motion.api.launch 0
scoreboard players operation $z player_motion.api.launch = #sp.vz sp.data
scoreboard players operation $z player_motion.api.launch *= #push_air_scale sp.const
scoreboard players operation $z player_motion.api.launch /= #push_div sp.const
