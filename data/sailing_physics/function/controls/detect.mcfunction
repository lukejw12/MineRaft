execute unless entity @s[tag=sp.captain] run return 0
scoreboard players set #sp.steering sp.data 0
execute if predicate sailing_physics:is_riding run scoreboard players set #sp.steering sp.data 1
scoreboard players set #sp.input_fwd sp.data 0
scoreboard players set #sp.input_bwd sp.data 0
execute if score #sp.steering sp.data matches 0 run return 0
execute if predicate sailing_physics:input_forward run scoreboard players set #sp.input_fwd sp.data 1
execute if predicate sailing_physics:input_backward run scoreboard players set #sp.input_bwd sp.data 1
execute if score #sp.auto_move sp.data matches 1 run scoreboard players set #sp.input_fwd sp.data 1
execute if score #sp.auto_move sp.data matches 1 run scoreboard players set #sp.input_bwd sp.data 0
execute store result score #sp.heading sp.data run data get entity @s Rotation[0]
scoreboard players operation #sp.heading sp.data %= #360 sp.const
execute if score #sp.heading sp.data matches ..-1 run scoreboard players add #sp.heading sp.data 360
