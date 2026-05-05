scoreboard players set #sp.center_x sp.data 0
scoreboard players set #sp.center_z sp.data 0
scoreboard players set #sp.fcount sp.data 0
execute as @e[type=item_display,tag=mr.foundation] run function sailing_physics:movement/accumulate_center
execute if score #sp.fcount sp.data matches 1.. run scoreboard players operation #sp.center_x sp.data /= #sp.fcount sp.data
execute if score #sp.fcount sp.data matches 1.. run scoreboard players operation #sp.center_z sp.data /= #sp.fcount sp.data
