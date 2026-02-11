scoreboard players add @s mr.flotsam_timer 1
execute if score @s mr.flotsam_timer matches 120.. run function mineraft:flotsam/core/start_wave
execute if score @s mr.flotsam_timer matches 120.. run scoreboard players set @s mr.flotsam_timer 0
execute if score #flotsam_wave mr.data matches 1.. run function mineraft:flotsam/core/spawn_flotsam
execute if score #flotsam_wave mr.data matches 1.. run scoreboard players remove #flotsam_wave mr.data 1
