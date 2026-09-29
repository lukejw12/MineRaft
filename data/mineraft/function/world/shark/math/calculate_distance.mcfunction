scoreboard players operation #dist_sq mr.data = #delta_x mr.data
scoreboard players operation #dist_sq mr.data *= #delta_x mr.data

scoreboard players operation #temp mr.data = #delta_y mr.data
scoreboard players operation #temp mr.data *= #delta_y mr.data
scoreboard players operation #dist_sq mr.data += #temp mr.data

scoreboard players operation #temp mr.data = #delta_z mr.data
scoreboard players operation #temp mr.data *= #delta_z mr.data
scoreboard players operation #dist_sq mr.data += #temp mr.data

scoreboard players operation #distance mr.data = #dist_sq mr.data