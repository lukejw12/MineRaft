scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:smeltery smeltery_type set from entity @s data.smeltery_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/smeltery/spawn/calculate_rotation

execute align xyz run tp @s ~0.5 ~ ~0.5
function mineraft:grid/block/compute_slot
execute if score #slot_free mr.data matches 0 run return run kill @s

execute align xyz positioned ~ ~1 ~ run function mineraft:structures/smeltery/spawn/spawn

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.smeltery:1b}] 1

kill @s
