data modify entity @s data.seed_type set from storage mineraft:tmp cp.seed
data modify entity @s data.state set value "growing"
data modify entity @s data.stage set value 0
execute store result score #cp.t mr.data run data get storage mineraft:tmp cp.def.stages
execute store result entity @s data.last int 1 run scoreboard players remove #cp.t mr.data 1
scoreboard players set @s mr.timer 0
function mineraft:structure/crop_plot/crop_model with entity @s data
