
execute align xyz run tp @s ~0.5 ~ ~0.5
execute store result score #hit_bx mr.data run data get entity @s Pos[0]
execute store result score #hit_bz mr.data run data get entity @s Pos[2]

scoreboard players set #slot_free mr.data 0
execute at @s as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/compute_and_check
