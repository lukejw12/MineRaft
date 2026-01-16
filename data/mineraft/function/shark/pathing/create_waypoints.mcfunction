scoreboard players add #current_segment mr.data 1

scoreboard players operation #segment_x mr.data = #delta_x mr.data
scoreboard players operation #segment_x mr.data *= #current_segment mr.data
scoreboard players operation #segment_x mr.data /= #segments mr.data
scoreboard players operation #waypoint_x mr.data = #start_x mr.data
scoreboard players operation #waypoint_x mr.data += #segment_x mr.data

scoreboard players operation #segment_z mr.data = #delta_z mr.data
scoreboard players operation #segment_z mr.data *= #current_segment mr.data
scoreboard players operation #segment_z mr.data /= #segments mr.data
scoreboard players operation #waypoint_z mr.data = #start_z mr.data
scoreboard players operation #waypoint_z mr.data += #segment_z mr.data

execute if score #current_segment mr.data matches 2..7 run function mineraft:shark/pathing/add_curve_offset

execute store result storage mineraft:shark temp_x int 1 run scoreboard players get #waypoint_x mr.data
execute store result storage mineraft:shark temp_z int 1 run scoreboard players get #waypoint_z mr.data

function mineraft:shark/pathing/append_waypoint with storage mineraft:shark

execute if score #current_segment mr.data < #segments mr.data run function mineraft:shark/pathing/create_waypoints