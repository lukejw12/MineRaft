function mineraft:structure/claim/key
execute if data storage mineraft:tmp k{m:"floor"} run function mineraft:structure/break/dep_cell with storage mineraft:tmp k
execute if data storage mineraft:tmp k{m:"tile"} run function mineraft:structure/break/dep_tile with storage mineraft:tmp k
execute if data storage mineraft:tmp k{m:"cell"} if entity @s[tag=mr.t.support] run function mineraft:structure/break/dep_support with storage mineraft:tmp k
execute if data storage mineraft:tmp k{m:"edge"} run function mineraft:grid/edge_release with storage mineraft:tmp k
execute unless data storage mineraft:tmp k{m:"edge"} run function mineraft:grid/release with storage mineraft:tmp k
data remove storage mineraft:tmp rl[0]
execute if data storage mineraft:tmp rl[0] run function mineraft:structure/claim/release_loop
