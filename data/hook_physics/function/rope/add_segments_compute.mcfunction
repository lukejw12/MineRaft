execute store result score #hp.spawn_px hp.data run data get entity @s Pos[0] 1000
execute store result score #hp.spawn_py hp.data run data get entity @s Pos[1] 1000
scoreboard players add #hp.spawn_py hp.data 900
execute store result score #hp.spawn_pz hp.data run data get entity @s Pos[2] 1000

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
scoreboard players operation #hp.spawn_px hp.data += #hp.right_x hp.data
scoreboard players operation #hp.spawn_pz hp.data += #hp.right_z hp.data

execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data store result score #hp.spawn_hx hp.data run data get entity @s Pos[0] 1000
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data store result score #hp.spawn_hy hp.data run data get entity @s Pos[1] 1000
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data store result score #hp.spawn_hz hp.data run data get entity @s Pos[2] 1000
scoreboard players operation #hp.spawn_dx hp.data = #hp.spawn_hx hp.data
scoreboard players operation #hp.spawn_dx hp.data -= #hp.spawn_px hp.data
scoreboard players operation #hp.spawn_dy hp.data = #hp.spawn_hy hp.data
scoreboard players operation #hp.spawn_dy hp.data -= #hp.spawn_py hp.data
scoreboard players operation #hp.spawn_dz hp.data = #hp.spawn_hz hp.data
scoreboard players operation #hp.spawn_dz hp.data -= #hp.spawn_pz hp.data
