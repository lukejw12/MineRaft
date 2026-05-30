scoreboard players operation #hp.t hp.data = @s hp.rope_idx
scoreboard players operation #hp.t hp.data *= #hp.1000 hp.const
scoreboard players operation #hp.t hp.data /= #hp.segments hp.const

scoreboard players operation #hp.rx hp.data = #hp.delta_x hp.data
scoreboard players operation #hp.rx hp.data *= #hp.t hp.data
scoreboard players operation #hp.rx hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.rx hp.data += #hp.player_x hp.data
scoreboard players operation #hp.ry hp.data = #hp.delta_y hp.data
scoreboard players operation #hp.ry hp.data *= #hp.t hp.data
scoreboard players operation #hp.ry hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.ry hp.data += #hp.player_y hp.data
scoreboard players operation #hp.rz hp.data = #hp.delta_z hp.data
scoreboard players operation #hp.rz hp.data *= #hp.t hp.data
scoreboard players operation #hp.rz hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.rz hp.data += #hp.player_z hp.data

scoreboard players operation #hp.droop hp.data = #hp.t hp.data
scoreboard players operation #hp.droop2 hp.data = #hp.1000 hp.const
scoreboard players operation #hp.droop2 hp.data -= #hp.t hp.data
scoreboard players operation #hp.droop hp.data *= #hp.droop2 hp.data
scoreboard players operation #hp.droop hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.droop hp.data *= #hp.sag hp.const
scoreboard players operation #hp.droop hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.ry hp.data -= #hp.droop hp.data

scoreboard players operation #hp.t2 hp.data = @s hp.rope_idx
scoreboard players add #hp.t2 hp.data 1
scoreboard players operation #hp.t2 hp.data *= #hp.1000 hp.const
scoreboard players operation #hp.t2 hp.data /= #hp.segments hp.const

scoreboard players operation #hp.nx hp.data = #hp.delta_x hp.data
scoreboard players operation #hp.nx hp.data *= #hp.t2 hp.data
scoreboard players operation #hp.nx hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.nx hp.data += #hp.player_x hp.data
scoreboard players operation #hp.ny hp.data = #hp.delta_y hp.data
scoreboard players operation #hp.ny hp.data *= #hp.t2 hp.data
scoreboard players operation #hp.ny hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.ny hp.data += #hp.player_y hp.data
scoreboard players operation #hp.nz hp.data = #hp.delta_z hp.data
scoreboard players operation #hp.nz hp.data *= #hp.t2 hp.data
scoreboard players operation #hp.nz hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.nz hp.data += #hp.player_z hp.data

scoreboard players operation #hp.droop hp.data = #hp.t2 hp.data
scoreboard players operation #hp.droop2 hp.data = #hp.1000 hp.const
scoreboard players operation #hp.droop2 hp.data -= #hp.t2 hp.data
scoreboard players operation #hp.droop hp.data *= #hp.droop2 hp.data
scoreboard players operation #hp.droop hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.droop hp.data *= #hp.sag hp.const
scoreboard players operation #hp.droop hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.ny hp.data -= #hp.droop hp.data

execute store result storage hook_physics:temp cx double 0.001 run scoreboard players get #hp.rx hp.data
execute store result storage hook_physics:temp cy double 0.001 run scoreboard players get #hp.ry hp.data
execute store result storage hook_physics:temp cz double 0.001 run scoreboard players get #hp.rz hp.data
execute store result storage hook_physics:temp nx double 0.001 run scoreboard players get #hp.nx hp.data
execute store result storage hook_physics:temp ny double 0.001 run scoreboard players get #hp.ny hp.data
execute store result storage hook_physics:temp nz double 0.001 run scoreboard players get #hp.nz hp.data

function hook_physics:rope/orient_segment with storage hook_physics:temp
