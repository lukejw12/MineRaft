scoreboard players set #radius mr.data 40

scoreboard players operation #angle mr.data = @s mr.shark_circle_angle

scoreboard players operation #target_x mr.data = #center_x mr.data
scoreboard players operation #target_z mr.data = #center_z mr.data

execute if score #angle mr.data matches 0..45 run scoreboard players operation #target_x mr.data += #radius mr.data
execute if score #angle mr.data matches 0..45 run scoreboard players operation #target_z mr.data += #radius mr.data

execute if score #angle mr.data matches 46..90 run scoreboard players operation #target_z mr.data += #radius mr.data

execute if score #angle mr.data matches 91..135 run scoreboard players operation #temp mr.data = #radius mr.data
execute if score #angle mr.data matches 91..135 run scoreboard players operation #temp mr.data *= #-1 mr.const
execute if score #angle mr.data matches 91..135 run scoreboard players operation #target_x mr.data += #temp mr.data
execute if score #angle mr.data matches 91..135 run scoreboard players operation #target_z mr.data += #radius mr.data

execute if score #angle mr.data matches 136..180 run scoreboard players operation #temp mr.data = #radius mr.data
execute if score #angle mr.data matches 136..180 run scoreboard players operation #temp mr.data *= #-1 mr.const
execute if score #angle mr.data matches 136..180 run scoreboard players operation #target_x mr.data += #temp mr.data

execute if score #angle mr.data matches 181..225 run scoreboard players operation #temp mr.data = #radius mr.data
execute if score #angle mr.data matches 181..225 run scoreboard players operation #temp mr.data *= #-1 mr.const
execute if score #angle mr.data matches 181..225 run scoreboard players operation #target_x mr.data += #temp mr.data
execute if score #angle mr.data matches 181..225 run scoreboard players operation #temp2 mr.data = #radius mr.data
execute if score #angle mr.data matches 181..225 run scoreboard players operation #temp2 mr.data *= #-1 mr.const
execute if score #angle mr.data matches 181..225 run scoreboard players operation #target_z mr.data += #temp2 mr.data

execute if score #angle mr.data matches 226..270 run scoreboard players operation #temp mr.data = #radius mr.data
execute if score #angle mr.data matches 226..270 run scoreboard players operation #temp mr.data *= #-1 mr.const
execute if score #angle mr.data matches 226..270 run scoreboard players operation #target_z mr.data += #temp mr.data

execute if score #angle mr.data matches 271..315 run scoreboard players operation #target_x mr.data += #radius mr.data
execute if score #angle mr.data matches 271..315 run scoreboard players operation #temp mr.data = #radius mr.data
execute if score #angle mr.data matches 271..315 run scoreboard players operation #temp mr.data *= #-1 mr.const
execute if score #angle mr.data matches 271..315 run scoreboard players operation #target_z mr.data += #temp mr.data

execute if score #angle mr.data matches 316..360 run scoreboard players operation #target_x mr.data += #radius mr.data