data modify storage mineraft:tmp p set value {w:1.05,h:1.05}
data modify storage mineraft:tmp p merge from storage mineraft:tmp it[0]
function mineraft:structure/spawn/part_pos
function mineraft:structure/spawn/kind/hitbox with storage mineraft:tmp p
execute as @e[type=interaction,tag=mr.new] run function mineraft:structure/spawn/tag_hitbox
data remove storage mineraft:tmp it[0]
execute if data storage mineraft:tmp it[0] run function mineraft:structure/spawn/hitbox_loop
