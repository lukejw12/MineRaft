
execute unless block ~ ~ ~ #minecraft:raycast_blocks run function mineraft:raft_decor/trophy_board/break_trophy_board

execute if entity @s[tag=facing_south] if block ~ ~ ~-1 #minecraft:raycast_blocks run function mineraft:raft_decor/trophy_board/break_trophy_board
execute if entity @s[tag=facing_west] if block ~1 ~ ~ #minecraft:raycast_blocks run function mineraft:raft_decor/trophy_board/break_trophy_board
execute if entity @s[tag=facing_north] if block ~ ~ ~1 #minecraft:raycast_blocks run function mineraft:raft_decor/trophy_board/break_trophy_board
execute if entity @s[tag=facing_east] if block ~-1 ~ ~ #minecraft:raycast_blocks run function mineraft:raft_decor/trophy_board/break_trophy_board