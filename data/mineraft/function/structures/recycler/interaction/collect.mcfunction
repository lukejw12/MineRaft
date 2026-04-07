execute store result score #cubes mr.data run data get entity @s data.cube_count

execute store result storage mineraft:give count int 1 run scoreboard players get #cubes mr.data
data modify storage mineraft:give item_type set value "trash_cube"
execute as @a[tag=mr.interacting] run function mineraft:core/give_item_loop

data modify entity @s data.state set value "idle"
data remove entity @s data.cube_count
scoreboard players set @s mr.recycler_fill 0
scoreboard players set @s mr.recycler_progress 0
scoreboard players set @s mr.recycler_tick 0
scoreboard players set @s mr.recycler_battery_tick 0

function mineraft:structures/recycler/models/idle/update

playsound minecraft:entity.item.pickup player @a[tag=mr.interacting] ~ ~ ~ 1 1
particle happy_villager ~ ~0.8 ~ 0.2 0.2 0.2 0 10
