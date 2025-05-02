
execute store result score #cx shark.detect run data get entity @e[tag=central_raft,limit=1] Pos[0] 1000
execute store result score #cy shark.detect run data get entity @e[tag=central_raft,limit=1] Pos[1] 1000
execute store result score #cz shark.detect run data get entity @e[tag=central_raft,limit=1] Pos[2] 1000

execute store result score #sx shark.detect run data get entity @s Pos[0] 1000
execute store result score #sy shark.detect run data get entity @s Pos[1] 1000
execute store result score #sz shark.detect run data get entity @s Pos[2] 1000

function mineraft:shark/get_circle_pos

scoreboard players operation #angle_next shark.detect = @s shark.angle
scoreboard players add #angle_next shark.detect 10
scoreboard players operation #angle_next shark.detect %= #360 shark.detect

scoreboard players operation #current_x shark.detect = #cos_x shark.detect
scoreboard players operation #current_z shark.detect = #sin_z shark.detect

scoreboard players operation #angle_calc shark.detect = #angle_next shark.detect
function mineraft:shark/calculate_point
scoreboard players operation #next_x shark.detect = #cos_x shark.detect
scoreboard players operation #next_z shark.detect = #sin_z shark.detect

scoreboard players operation #cos_x shark.detect = #current_x shark.detect
scoreboard players operation #sin_z shark.detect = #current_z shark.detect


scoreboard players operation #tx shark.detect = #cx shark.detect
scoreboard players operation #tx shark.detect += #cos_x shark.detect
scoreboard players operation #tx shark.detect -= #sx shark.detect

scoreboard players operation #ty shark.detect = #cy shark.detect
scoreboard players operation #ty shark.detect -= #sy shark.detect

scoreboard players operation #ty shark.detect += #y_offset shark.detect

scoreboard players operation #tz shark.detect = #cz shark.detect
scoreboard players operation #tz shark.detect += #sin_z shark.detect
scoreboard players operation #tz shark.detect -= #sz shark.detect

execute store result entity @s Motion[0] double 0.00001 run scoreboard players get #tx shark.detect
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get #ty shark.detect
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get #tz shark.detect

scoreboard players operation #facing_x shark.detect = #cx shark.detect
scoreboard players operation #facing_x shark.detect += #next_x shark.detect
scoreboard players operation #facing_z shark.detect = #cz shark.detect
scoreboard players operation #facing_z shark.detect += #next_z shark.detect

execute store result entity @e[type=marker,tag=shark_facing,limit=1] Pos[0] double 0.001 run scoreboard players get #facing_x shark.detect
execute store result entity @e[type=marker,tag=shark_facing,limit=1] Pos[2] double 0.001 run scoreboard players get #facing_z shark.detect
execute at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=shark_facing,limit=1]