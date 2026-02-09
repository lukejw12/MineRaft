execute store result score #flotsam_count mr.data if entity @e[type=item,tag=mr.flotsam]

execute if score #flotsam_count mr.data matches 50.. run return fail

function mineraft:flotsam/references/items

execute store result score #spawn_x mr.data run random value 40..50
execute store result score #spawn_z_abs mr.data run random value 0..40

execute store result score #spawn_z mr.data run random value 0..1
execute if score #spawn_z mr.data matches 0 run scoreboard players operation #spawn_z_abs mr.data *= #-1 mr.const
scoreboard players operation #spawn_z mr.data = #spawn_z_abs mr.data

execute store result storage mineraft:flotsam spawn_x int 1 run scoreboard players get #spawn_x mr.data
execute store result storage mineraft:flotsam spawn_z int 1 run scoreboard players get #spawn_z mr.data

function mineraft:flotsam/core/do_spawn with storage mineraft:flotsam
