scoreboard players add @s mr.flotsam_timer 1

execute if score @s mr.flotsam_timer matches 100.. run function mineraft:flotsam/core/spawn_flotsam
execute if score @s mr.flotsam_timer matches 100.. run scoreboard players set @s mr.flotsam_timer 0