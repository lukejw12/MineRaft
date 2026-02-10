scoreboard players operation #player_link mr.data = @s mr.link
data modify storage mineraft:grill grill_type set from entity @s data.grill_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/grill/spawn/calculate_rotation
execute align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.grill_display,distance=..1] run return run kill @s
execute align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.smeltery_display,distance=..1] run return run kill @s
execute align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.purifier_display,distance=..1] run return run kill @s
execute align xyz positioned ~ ~1 ~ run function mineraft:structures/grill/spawn/spawn
execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.grill:1b}] 1
kill @s