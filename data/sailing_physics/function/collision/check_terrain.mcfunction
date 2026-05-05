scoreboard players set #sp.terrain_ok sp.data 1
execute as @e[tag=sp.raft_entity,tag=mr.foundation] at @s run function sailing_physics:collision/check_single_terrain
