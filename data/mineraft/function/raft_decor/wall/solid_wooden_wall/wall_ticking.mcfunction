
execute if entity @s[tag=!breaking] unless block ~ ~-1 ~ #raft_materials run tag @s add breaking

execute if entity @s[tag=facing_east_west,tag=!breaking] if predicate mineraft:wall/if_blocks_x_clear run say x
execute if entity @s[tag=facing_north_south,tag=!breaking] if predicate mineraft:wall/if_blocks_z_clear run say z
execute if entity @s[tag=facing_east_west,tag=!breaking] if predicate mineraft:wall/if_blocks_x_clear run tag @s add breaking
execute if entity @s[tag=facing_north_south,tag=!breaking] if predicate mineraft:wall/if_blocks_z_clear run tag @s add breaking


execute if entity @s[tag=facing_east_west,tag=breaking] run function mineraft:raft_decor/wall/solid_wooden_wall/break_east_west_wall
execute if entity @s[tag=facing_north_south,tag=breaking] run function mineraft:raft_decor/wall/solid_wooden_wall/break_north_south_wall