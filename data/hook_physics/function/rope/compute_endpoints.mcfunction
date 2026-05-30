execute store result score #hp.player_x hp.data run data get entity @s Pos[0] 1000
execute store result score #hp.player_y hp.data run data get entity @s Pos[1] 1000
scoreboard players add #hp.player_y hp.data 900
execute store result score #hp.player_z hp.data run data get entity @s Pos[2] 1000

execute store result score #hp.p_yaw hp.data run data get entity @s Rotation[0]
scoreboard players operation #hp.p_yaw hp.data %= #360 hp.const
execute if score #hp.p_yaw hp.data matches ..-1 run scoreboard players add #hp.p_yaw hp.data 360
execute store result storage hook_physics:temp yaw int 1 run scoreboard players get #hp.p_yaw hp.data
function hook_physics:rope/lookup_yaw with storage hook_physics:temp
scoreboard players operation #hp.right_x hp.data = #hp.cos hp.data
scoreboard players operation #hp.right_x hp.data *= #400 hp.const
scoreboard players operation #hp.right_x hp.data /= #hp.10000 hp.const
scoreboard players operation #hp.right_x hp.data *= #-1 hp.const
scoreboard players operation #hp.right_z hp.data = #hp.sin hp.data
scoreboard players operation #hp.right_z hp.data *= #400 hp.const
scoreboard players operation #hp.right_z hp.data /= #hp.10000 hp.const
scoreboard players operation #hp.right_z hp.data *= #-1 hp.const
scoreboard players operation #hp.player_x hp.data += #hp.right_x hp.data
scoreboard players operation #hp.player_z hp.data += #hp.right_z hp.data

execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data store result score #hp.hook_x hp.data run data get entity @s Pos[0] 1000
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data store result score #hp.hook_y hp.data run data get entity @s Pos[1] 1000
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data store result score #hp.hook_z hp.data run data get entity @s Pos[2] 1000
scoreboard players operation #hp.delta_x hp.data = #hp.hook_x hp.data
scoreboard players operation #hp.delta_x hp.data -= #hp.player_x hp.data
scoreboard players operation #hp.delta_y hp.data = #hp.hook_y hp.data
scoreboard players operation #hp.delta_y hp.data -= #hp.player_y hp.data
scoreboard players operation #hp.delta_z hp.data = #hp.hook_z hp.data
scoreboard players operation #hp.delta_z hp.data -= #hp.player_z hp.data

scoreboard players operation #hp.dx_abs hp.data = #hp.delta_x hp.data
execute if score #hp.dx_abs hp.data matches ..-1 run scoreboard players operation #hp.dx_abs hp.data *= #-1 hp.const
scoreboard players operation #hp.dz_abs hp.data = #hp.delta_z hp.data
execute if score #hp.dz_abs hp.data matches ..-1 run scoreboard players operation #hp.dz_abs hp.data *= #-1 hp.const
scoreboard players operation #hp.dy_abs hp.data = #hp.delta_y hp.data
execute if score #hp.dy_abs hp.data matches ..-1 run scoreboard players operation #hp.dy_abs hp.data *= #-1 hp.const
scoreboard players operation #hp.total_dist hp.data = #hp.dx_abs hp.data
scoreboard players operation #hp.total_dist hp.data += #hp.dz_abs hp.data
scoreboard players operation #hp.total_dist hp.data += #hp.dy_abs hp.data
