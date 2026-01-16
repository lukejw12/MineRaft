data modify entity @s data.waypoints set value []

scoreboard players operation #delta_x mr.data = #end_x mr.data
scoreboard players operation #delta_x mr.data -= #start_x mr.data
scoreboard players operation #delta_z mr.data = #end_z mr.data
scoreboard players operation #delta_z mr.data -= #start_z mr.data

scoreboard players set #segments mr.data 8
scoreboard players set #current_segment mr.data 0

function mineraft:shark/pathing/create_waypoints