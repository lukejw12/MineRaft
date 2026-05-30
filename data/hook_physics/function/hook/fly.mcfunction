scoreboard players add @s hp.tick 1
execute if block ~ ~ ~ water run return run function hook_physics:hook/start_float
execute store result score #hp.y hp.data run data get entity @s Pos[1] 1000
execute if score #hp.y hp.data matches ..62000 run return run function hook_physics:hook/start_float
execute if score @s hp.tick matches 100.. run function hook_physics:hook/start_float
