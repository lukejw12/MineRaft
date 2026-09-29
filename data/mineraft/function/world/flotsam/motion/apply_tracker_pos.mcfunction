$data modify entity @e[type=armor_stand,tag=mr.bobber_tracker,limit=1] Pos set value [$(bobber_x)d,$(bobber_y)d,$(bobber_z)d]
execute store result score #temp mr.data run data get entity @e[type=armor_stand,tag=mr.bobber_tracker,limit=1] Pos[1] 1000
scoreboard players remove #temp mr.data 1000
execute store result entity @e[type=armor_stand,tag=mr.bobber_tracker,limit=1] Pos[1] double 0.001 run scoreboard players get #temp mr.data