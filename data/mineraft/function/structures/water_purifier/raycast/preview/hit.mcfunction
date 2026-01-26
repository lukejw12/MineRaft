scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:purifier purifier_type set from entity @s data.purifier_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/water_purifier/calculate_rotation

execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.purifier_display,distance=..1] run return run function mineraft:structures/water_purifier/raycast/preview/hide
execute align xyz positioned ~ ~ ~ if entity @e[type=item_display,tag=mr.smeltery_display,distance=..1] run return run function mineraft:structures/water_purifier/raycast/preview/hide

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.purifier_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/water_purifier/spawn_preview with storage mineraft:purifier

execute as @e[type=item_display,tag=mr.new_purifier_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_purifier_preview] remove mr.new_purifier_preview

execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.purifier_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~0.5 ~0.5
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.purifier_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/water_purifier/raycast/preview/apply_rotation with storage mineraft:purifier

kill @s