scoreboard players set #sp.sailing sp.data 1
scoreboard players set #sp.cooldown sp.data 5
tag @s add sp.captain
tag @s add sp.steering_tag
execute as @e[type=item_display,tag=mr.foundation] at @s run fill ~1 61 ~1 ~-1 62 ~-1 water replace barrier
execute as @e[type=item_display,tag=mr.foundation] at @s run fill ~1 63 ~1 ~-1 66 ~-1 air replace barrier
execute as @e[type=item_display,tag=mr.foundation] at @s run fill ~1 63 ~1 ~-1 66 ~-1 air replace iron_trapdoor
execute as @e[type=item_display,tag=mr.support_display] at @s run fill ~ ~ ~ ~ ~2 ~ air replace iron_bars
execute as @e[type=item_display,tag=mr.campfire_display] at @s run setblock ~ ~ ~ air
execute as @e[type=item_display,tag=mr.grill_display] at @s run setblock ~ ~ ~ air
execute as @e[type=item_display,tag=mr.campfire_display] at @s run summon block_display ~-0.5 ~ ~-0.5 {Tags:["sp.raft_entity","sp.campfire_block"],block_state:{Name:"minecraft:campfire",Properties:{lit:"false"}},teleport_duration:2}
execute as @e[type=item_display,tag=mr.grill_display] at @s run summon block_display ~-0.5 ~ ~-0.5 {Tags:["sp.raft_entity","sp.grill_block"],block_state:{Name:"minecraft:barrier"},teleport_duration:2}
execute as @e[type=item_display,tag=mr.purifier_display] at @s run function sailing_physics:docking/remove_purifier_blocks
execute as @e[type=item_display,tag=mr.small_crop_plot_display] at @s run function sailing_physics:docking/remove_small_crop_block1
execute as @e[type=item_display,tag=mr.small_adv_crop_plot_display] at @s run function sailing_physics:docking/remove_small_crop_block1
function sailing_physics:movement/compute_center
function sailing_physics:movement/store_offsets


execute at @s run function sailing_physics:controls/mount
execute as @e[tag=sp.raft_entity,type=item_display] run data merge entity @s {teleport_duration:2}
scoreboard players set #sp.input_fwd sp.data 0
scoreboard players set #sp.input_bwd sp.data 0
scoreboard players set #sp.steering sp.data 1
