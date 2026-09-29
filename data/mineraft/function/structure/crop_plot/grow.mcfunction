scoreboard players add @s mr.timer 1
execute if score @s mr.timer matches ..799 run return 0
scoreboard players set @s mr.timer 0
execute store result score #cp.s mr.data run data get entity @s data.stage
execute store result entity @s data.stage int 1 run scoreboard players add #cp.s mr.data 1
execute store result score #cp.l mr.data run data get entity @s data.last
execute if score #cp.s mr.data >= #cp.l mr.data run data modify entity @s data.state set value "ripe"
function mineraft:structure/crop_plot/crop_model with entity @s data
