execute store result score #player_x mr.data run data get entity @p Pos[0] 10
execute store result score #player_z mr.data run data get entity @p Pos[2] 10
execute store result score #self_x mr.data run data get entity @s Pos[0] 10
execute store result score #self_z mr.data run data get entity @s Pos[2] 10
scoreboard players operation #player_x mr.data -= #self_x mr.data
scoreboard players operation #player_z mr.data -= #self_z mr.data
scoreboard players set #player_y mr.data 70
data modify entity @s NoGravity set value 0b
execute store result storage mineraft:flotsam launch_x double 0.011 run scoreboard players get #player_x mr.data
execute store result storage mineraft:flotsam launch_y double 0.011 run scoreboard players get #player_y mr.data
execute store result storage mineraft:flotsam launch_z double 0.011 run scoreboard players get #player_z mr.data
function mineraft:flotsam/motion/apply_launch with storage mineraft:flotsam
tag @s add mr.launched