scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:smeltery smeltery_type set from entity @s data.smeltery_type

scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/smeltery/spawn/calculate_rotation

execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.smeltery_display,distance=..0.5] run return run kill @s
execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.purifier_display,distance=..0.5] run return run kill @s

execute align xyz positioned ~ ~1 ~ run function mineraft:structures/smeltery/spawn/spawn

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.smeltery:1b}] 1

kill @s