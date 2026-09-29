scoreboard players operation #perp_x mr.data = #delta_z mr.data
scoreboard players operation #perp_x mr.data *= #-1 mr.const
scoreboard players operation #perp_z mr.data = #delta_x mr.data

execute store result score #curve_amount mr.data run random value -3..3

scoreboard players operation #perp_x mr.data *= #curve_amount mr.data
scoreboard players operation #perp_z mr.data *= #curve_amount mr.data

scoreboard players operation #perp_x mr.data /= #segments mr.data
scoreboard players operation #perp_z mr.data /= #segments mr.data

scoreboard players operation #waypoint_x mr.data += #perp_x mr.data
scoreboard players operation #waypoint_z mr.data += #perp_z mr.data