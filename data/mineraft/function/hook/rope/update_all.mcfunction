scoreboard players operation #hp.caster_link hp.data = @s mr.link
execute unless entity @e[tag=hp.hook] run return 0
execute at @s run function mineraft:hook/rope/compute_endpoints

scoreboard players set #hp.cur_segs hp.data 0
execute as @e[tag=hp.rope] if score @s hp.link = #hp.caster_link hp.data run scoreboard players add #hp.cur_segs hp.data 1
scoreboard players operation #hp.need_segs hp.data = #hp.total_dist hp.data
scoreboard players operation #hp.need_segs hp.data /= #hp.1000 hp.const
scoreboard players add #hp.need_segs hp.data 3
execute if score #hp.need_segs hp.data matches 31.. run scoreboard players set #hp.need_segs hp.data 30
execute if score #hp.need_segs hp.data matches ..3 run scoreboard players set #hp.need_segs hp.data 3

execute if score #hp.cur_segs hp.data < #hp.need_segs hp.data run function mineraft:hook/rope/add_segments
execute if score #hp.cur_segs hp.data > #hp.need_segs hp.data run function mineraft:hook/rope/remove_segments

scoreboard players operation #hp.segments hp.const = #hp.need_segs hp.data

scoreboard players operation #hp.seg_len hp.data = #hp.total_dist hp.data
scoreboard players operation #hp.seg_len hp.data /= #hp.segments hp.const
execute store result storage mineraft:hook/rope seg_len double 0.001 run scoreboard players get #hp.seg_len hp.data
execute store result storage mineraft:hook/rope seg_len_r double 0.0010667 run scoreboard players get #hp.seg_len hp.data
scoreboard players operation #hp.half_seg hp.data = #hp.seg_len hp.data
scoreboard players operation #hp.half_seg hp.data /= #2 hp.const
scoreboard players operation #hp.half_seg hp.data *= #-1 hp.const
execute store result storage mineraft:hook/rope half_seg double 0.001 run scoreboard players get #hp.half_seg hp.data

execute as @e[tag=hp.rope] if score @s hp.link = #hp.caster_link hp.data run function mineraft:hook/rope/update_single
