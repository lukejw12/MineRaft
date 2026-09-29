function mineraft:structure/claim/key
execute if data storage mineraft:tmp k{m:"edge"} run function mineraft:grid/edge_claim with storage mineraft:tmp k
execute unless data storage mineraft:tmp k{m:"edge"} run function mineraft:grid/claim with storage mineraft:tmp k
data remove storage mineraft:tmp rl[0]
execute if data storage mineraft:tmp rl[0] run function mineraft:structure/claim/reapply_loop
