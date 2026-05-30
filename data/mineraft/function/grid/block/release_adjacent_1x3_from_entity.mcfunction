summon marker ~ ~ ~ {Tags:["mr.temp_adj"]}
execute as @e[type=marker,tag=mr.temp_adj,limit=1] at @s align xyz run tp @s ~0.5 ~ ~0.5
execute store result score #hit_bx mr.data run data get entity @e[type=marker,tag=mr.temp_adj,limit=1] Pos[0]
execute store result score #hit_bz mr.data run data get entity @e[type=marker,tag=mr.temp_adj,limit=1] Pos[2]
kill @e[type=marker,tag=mr.temp_adj]
function mineraft:grid/block/release_adjacent_1x3
