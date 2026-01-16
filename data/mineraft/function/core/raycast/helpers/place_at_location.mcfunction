execute store result score #center_x mr.data run data get entity @s Pos[0] 10
execute store result score #center_z mr.data run data get entity @s Pos[2] 10

scoreboard players operation #offset_x mr.data = #ray_x mr.data
scoreboard players operation #offset_x mr.data -= #center_x mr.data

scoreboard players operation #offset_z mr.data = #ray_z mr.data
scoreboard players operation #offset_z mr.data -= #center_z mr.data

scoreboard players operation #abs_x mr.data = #offset_x mr.data
execute if score #abs_x mr.data matches ..-1 run scoreboard players operation #abs_x mr.data *= #-1 mr.const

scoreboard players operation #abs_z mr.data = #offset_z mr.data
execute if score #abs_z mr.data matches ..-1 run scoreboard players operation #abs_z mr.data *= #-1 mr.const


execute if score #abs_x mr.data >= #abs_z mr.data if score #offset_x mr.data matches 1.. run return run execute align xyz positioned ~3 ~ ~ run function mineraft:core/raycast/helpers/try_place
execute if score #abs_x mr.data >= #abs_z mr.data if score #offset_x mr.data matches ..-1 run return run execute align xyz positioned ~-3 ~ ~ run function mineraft:core/raycast/helpers/try_place
execute if score #abs_z mr.data > #abs_x mr.data if score #offset_z mr.data matches 1.. run return run execute align xyz positioned ~ ~ ~3 run function mineraft:core/raycast/helpers/try_place
execute if score #abs_z mr.data > #abs_x mr.data if score #offset_z mr.data matches ..-1 run return run execute align xyz positioned ~ ~ ~-3 run function mineraft:core/raycast/helpers/try_place