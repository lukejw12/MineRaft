execute store result score #random_yaw mr.data run random value 0..360
execute store result score #random_pitch mr.data run random value -45..45

execute if score #offset mr.data matches 0 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~-0.5 ~0.1 ~-0.5
execute if score #offset mr.data matches 1 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~0.5 ~0.1 ~-0.5
execute if score #offset mr.data matches 2 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~-0.5 ~0.1 ~0.5
execute if score #offset mr.data matches 3 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~0.5 ~0.1 ~0.5
execute if score #offset mr.data matches 4 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~ ~0.1 ~
execute if score #offset mr.data matches 5 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~-0.7 ~0.15 ~
execute if score #offset mr.data matches 6 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~0.7 ~0.15 ~
execute if score #offset mr.data matches 7 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~ ~0.15 ~-0.7
execute if score #offset mr.data matches 8 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~ ~0.15 ~0.7
execute if score #offset mr.data matches 9 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~-0.35 ~0.2 ~-0.35
execute if score #offset mr.data matches 10 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~0.35 ~0.2 ~-0.35
execute if score #offset mr.data matches 11 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~-0.35 ~0.2 ~0.35
execute if score #offset mr.data matches 12 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~0.35 ~0.2 ~0.35
execute if score #offset mr.data matches 13 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~ ~0.2 ~
execute if score #offset mr.data matches 14 run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~ ~0.25 ~
execute if score #offset mr.data matches 15.. run tp @e[type=item_display,tag=mr.new_item_display,limit=1] ~ ~0.5 ~

execute store result storage mineraft:net item_yaw float 1 run scoreboard players get #random_yaw mr.data
execute store result storage mineraft:net item_pitch float 1 run scoreboard players get #random_pitch mr.data

function mineraft:structures/collection_net/apply_rotation with storage mineraft:net