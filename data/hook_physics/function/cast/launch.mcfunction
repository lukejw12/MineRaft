summon armor_stand ~ ~ ~ {Invisible:1b,Small:1b,Invulnerable:1b,Tags:["hp.hook","hp.new_hook"],attributes:[{id:"minecraft:scale",base:0.01}]}
execute as @e[tag=hp.new_hook,limit=1] run scoreboard players set @s hp.tick 0
execute as @e[tag=hp.new_hook,limit=1] run scoreboard players operation @s hp.link = @p mr.link

execute store result score #hp.pitch hp.data run data get entity @p Rotation[1]
execute if score #hp.pitch hp.data matches ..-1 run scoreboard players add #hp.pitch hp.data 360

execute store result storage hook_physics:temp yaw int 1 run scoreboard players get #hp.yaw hp.data
function hook_physics:rope/lookup_yaw with storage hook_physics:temp
scoreboard players operation #hp.sin_yaw hp.data = #hp.sin hp.data
scoreboard players operation #hp.cos_yaw hp.data = #hp.cos hp.data

execute store result storage hook_physics:temp yaw int 1 run scoreboard players get #hp.pitch hp.data
function hook_physics:rope/lookup_yaw with storage hook_physics:temp
scoreboard players operation #hp.sin_pitch hp.data = #hp.sin hp.data
scoreboard players operation #hp.cos_pitch hp.data = #hp.cos hp.data

scoreboard players operation #hp.speed hp.data = #hp.dist hp.data
scoreboard players operation #hp.speed hp.data /= #28 hp.const

scoreboard players operation #hp.mvx hp.data = #hp.sin_yaw hp.data
scoreboard players operation #hp.mvx hp.data *= #hp.cos_pitch hp.data
scoreboard players operation #hp.mvx hp.data /= #hp.10000 hp.const
scoreboard players operation #hp.mvx hp.data *= #hp.speed hp.data
scoreboard players operation #hp.mvx hp.data /= #hp.10000 hp.const
scoreboard players operation #hp.mvx hp.data *= #-1 hp.const

scoreboard players operation #hp.mvy hp.data = #hp.sin_pitch hp.data
scoreboard players operation #hp.mvy hp.data *= #hp.speed hp.data
scoreboard players operation #hp.mvy hp.data /= #hp.10000 hp.const
scoreboard players operation #hp.mvy hp.data *= #-1 hp.const
scoreboard players add #hp.mvy hp.data 150

scoreboard players operation #hp.mvz hp.data = #hp.cos_yaw hp.data
scoreboard players operation #hp.mvz hp.data *= #hp.cos_pitch hp.data
scoreboard players operation #hp.mvz hp.data /= #hp.10000 hp.const
scoreboard players operation #hp.mvz hp.data *= #hp.speed hp.data
scoreboard players operation #hp.mvz hp.data /= #hp.10000 hp.const

execute store result storage hook_physics:motion mx double 0.001 run scoreboard players get #hp.mvx hp.data
execute store result storage hook_physics:motion my double 0.001 run scoreboard players get #hp.mvy hp.data
execute store result storage hook_physics:motion mz double 0.001 run scoreboard players get #hp.mvz hp.data
function hook_physics:cast/set_motion with storage hook_physics:motion

tag @e[tag=hp.new_hook] add hp.flying
tag @e[tag=hp.new_hook] remove hp.new_hook
scoreboard players set #hp.rope_tick hp.data 0
