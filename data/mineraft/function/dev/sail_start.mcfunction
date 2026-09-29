function mineraft:structure/fall/flush
function mineraft:structure/collision/lift_all
scoreboard players set #sp.sailing sp.data 1
execute as @e[type=item_display,tag=mr.root] at @s run function mineraft:structure/hook/run {h:"sail_enter"}
function sailing_physics:movement/compute_center
function mineraft:sail/start
function sailing_physics:movement/store_offsets
