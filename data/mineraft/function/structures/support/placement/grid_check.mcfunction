execute store result score #hit_bx mr.data run data get entity @s Pos[0]
execute store result score #hit_bz mr.data run data get entity @s Pos[2]

scoreboard players set #slot_free mr.data 0
execute as @e[type=item_display,tag=mr.surface,distance=..5,limit=1,sort=nearest] run function mineraft:grid/block/compute_and_check

execute if score #slot_free mr.data matches 1 run scoreboard players set #support_can_place mr.data 1
