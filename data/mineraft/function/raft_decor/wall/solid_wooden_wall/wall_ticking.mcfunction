
execute if entity @s[tag=facing_east_west,tag=!breaking] unless block ~ ~-1 ~ #raft_materials run tag @s add breaking
execute if entity @s[tag=facing_east_west,tag=!breaking] unless block ~ ~ ~ #raft_materials run tag @s add breaking

execute if entity @s[tag=facing_east_west,tag=!breaking] unless block ~-1 ~2 ~ barrier run tag @s add breaking
execute if entity @s[tag=facing_east_west,tag=!breaking] unless block ~ ~2 ~ barrier run tag @s add breaking
execute if entity @s[tag=facing_east_west,tag=!breaking] unless block ~1 ~2 ~ barrier run tag @s add breaking

execute if entity @s[tag=facing_north_south,tag=!breaking] unless block ~ ~-1 ~ #raft_materials run tag @s add breaking
execute if entity @s[tag=facing_north_south,tag=!breaking] unless block ~ ~ ~ #raft_materials run tag @s add breaking

execute if entity @s[tag=facing_north_south,tag=!breaking] unless block ~ ~2 ~-1 barrier run tag @s add breaking
execute if entity @s[tag=facing_north_south,tag=!breaking] unless block ~ ~2 ~ barrier run tag @s add breaking
execute if entity @s[tag=facing_north_south,tag=!breaking] unless block ~ ~2 ~1 barrier run tag @s add breaking

execute if entity @s[tag=facing_east_west,tag=breaking] run function mineraft:raft_decor/wall/solid_wooden_wall/break_east_west_wall
execute if entity @s[tag=facing_north_south,tag=breaking] run function mineraft:raft_decor/wall/solid_wooden_wall/break_north_south_wall