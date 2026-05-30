scoreboard players operation #hp.t hp.data = #hp.cur_segs hp.data
scoreboard players operation #hp.t hp.data *= #hp.1000 hp.const
scoreboard players operation #hp.t hp.data /= #hp.need_segs hp.data

scoreboard players operation #hp.sx hp.data = #hp.spawn_dx hp.data
scoreboard players operation #hp.sx hp.data *= #hp.t hp.data
scoreboard players operation #hp.sx hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.sx hp.data += #hp.spawn_px hp.data
scoreboard players operation #hp.sy hp.data = #hp.spawn_dy hp.data
scoreboard players operation #hp.sy hp.data *= #hp.t hp.data
scoreboard players operation #hp.sy hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.sy hp.data += #hp.spawn_py hp.data
scoreboard players operation #hp.sz hp.data = #hp.spawn_dz hp.data
scoreboard players operation #hp.sz hp.data *= #hp.t hp.data
scoreboard players operation #hp.sz hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.sz hp.data += #hp.spawn_pz hp.data

scoreboard players operation #hp.t2 hp.data = #hp.cur_segs hp.data
scoreboard players add #hp.t2 hp.data 1
scoreboard players operation #hp.t2 hp.data *= #hp.1000 hp.const
scoreboard players operation #hp.t2 hp.data /= #hp.need_segs hp.data

scoreboard players operation #hp.nx hp.data = #hp.spawn_dx hp.data
scoreboard players operation #hp.nx hp.data *= #hp.t2 hp.data
scoreboard players operation #hp.nx hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.nx hp.data += #hp.spawn_px hp.data
scoreboard players operation #hp.ny hp.data = #hp.spawn_dy hp.data
scoreboard players operation #hp.ny hp.data *= #hp.t2 hp.data
scoreboard players operation #hp.ny hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.ny hp.data += #hp.spawn_py hp.data
scoreboard players operation #hp.nz hp.data = #hp.spawn_dz hp.data
scoreboard players operation #hp.nz hp.data *= #hp.t2 hp.data
scoreboard players operation #hp.nz hp.data /= #hp.1000 hp.const
scoreboard players operation #hp.nz hp.data += #hp.spawn_pz hp.data

execute store result storage hook_physics:spawn cx double 0.001 run scoreboard players get #hp.sx hp.data
execute store result storage hook_physics:spawn cy double 0.001 run scoreboard players get #hp.sy hp.data
execute store result storage hook_physics:spawn cz double 0.001 run scoreboard players get #hp.sz hp.data
execute store result storage hook_physics:spawn nx double 0.001 run scoreboard players get #hp.nx hp.data
execute store result storage hook_physics:spawn ny double 0.001 run scoreboard players get #hp.ny hp.data
execute store result storage hook_physics:spawn nz double 0.001 run scoreboard players get #hp.nz hp.data
function hook_physics:rope/do_spawn_oriented with storage hook_physics:spawn

scoreboard players operation @e[tag=hp.new_rope,limit=1] hp.rope_idx = #hp.cur_segs hp.data
scoreboard players operation @e[tag=hp.new_rope,limit=1] hp.link = #hp.caster_link hp.data
tag @e[tag=hp.new_rope] remove hp.new_rope
scoreboard players add #hp.cur_segs hp.data 1
execute if score #hp.cur_segs hp.data < #hp.need_segs hp.data run function hook_physics:rope/add_segments_loop
