function mineraft:structure/fall/flush
function mineraft:structure/collision/lift_all
scoreboard players set #sp.sailing sp.data 1
scoreboard players set #sp.cooldown sp.data 5
tag @s add sp.captain
tag @s add sp.steering_tag
execute as @e[type=item_display,tag=mr.root] at @s run function mineraft:structure/hook/run {h:"sail_enter"}
function sailing_physics:movement/compute_center
function mineraft:sail/start
function sailing_physics:movement/store_offsets
execute at @s run function sailing_physics:controls/mount
scoreboard players set #sp.input_fwd sp.data 0
scoreboard players set #sp.input_bwd sp.data 0
scoreboard players set #sp.steering sp.data 1
