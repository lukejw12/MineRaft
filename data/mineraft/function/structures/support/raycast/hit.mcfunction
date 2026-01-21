
scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:support support_type set from entity @s data.support_type

execute align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run kill @s
execute align xyz positioned ~0.5 ~1 ~0.5 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run return fail

execute align xyz positioned ~ ~1 ~ run function mineraft:structures/support/spawn

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.support:1b}] 1

kill @s