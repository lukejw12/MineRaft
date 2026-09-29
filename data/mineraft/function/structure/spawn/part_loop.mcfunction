function mineraft:structure/spawn/part_data
execute if data storage mineraft:tmp p{kind:"display"} run function mineraft:structure/spawn/kind/display with storage mineraft:tmp p
execute if data storage mineraft:tmp p{kind:"shulker"} run function mineraft:structure/spawn/kind/shulker with storage mineraft:tmp p
execute as @e[tag=mr.new] run function mineraft:structure/spawn/tag_new
data remove storage mineraft:tmp it[0]
execute if data storage mineraft:tmp it[0] run function mineraft:structure/spawn/part_loop
