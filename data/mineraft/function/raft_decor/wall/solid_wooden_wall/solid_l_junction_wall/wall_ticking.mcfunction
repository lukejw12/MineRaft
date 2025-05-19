execute if entity @s[tag=!breaking] unless block ~ ~-1 ~ #raft_materials run tag @s add breaking

execute if entity @s[tag=facing_northeast,tag=!breaking] if predicate mineraft:wall/if_northeast_broken run tag @s add breaking
execute if entity @s[tag=facing_northwest,tag=!breaking] if predicate mineraft:wall/if_northwest_broken run tag @s add breaking
execute if entity @s[tag=facing_southwest,tag=!breaking] if predicate mineraft:wall/if_southwest_broken run tag @s add breaking
execute if entity @s[tag=facing_southeast,tag=!breaking] if predicate mineraft:wall/if_southeast_broken run tag @s add breaking

execute if entity @s[tag=facing_northeast,tag=breaking] run function mineraft:raft_decor/wall/solid_wooden_wall/solid_l_junction_wall/break_northeast_wall
execute if entity @s[tag=facing_northwest,tag=breaking] run function mineraft:raft_decor/wall/solid_wooden_wall/solid_l_junction_wall/break_northwest_wall
execute if entity @s[tag=facing_southwest,tag=breaking] run function mineraft:raft_decor/wall/solid_wooden_wall/solid_l_junction_wall/break_southwest_wall
execute if entity @s[tag=facing_southeast,tag=breaking] run function mineraft:raft_decor/wall/solid_wooden_wall/solid_l_junction_wall/break_southeast_wall