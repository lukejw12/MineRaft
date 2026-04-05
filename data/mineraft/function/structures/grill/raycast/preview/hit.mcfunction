scoreboard players operation #player_link mr.data = @s mr.link
data modify storage mineraft:grill preview_type set from entity @s data.grill_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/grill/spawn/calculate_rotation

execute align xyz run tp @s ~0.5 ~ ~0.5
function mineraft:grid/block/compute_slot
execute if score #slot_free mr.data matches 0 run function mineraft:structures/grill/raycast/preview/hide
execute if score #slot_free mr.data matches 0 run return run kill @s

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.grill_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/grill/spawn/spawn_preview with storage mineraft:grill
execute as @e[type=item_display,tag=mr.new_grill_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_grill_preview] remove mr.new_grill_preview
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.grill_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~0.5 ~0.5
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.grill_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/grill/raycast/preview/apply_rotation with storage mineraft:grill
kill @s
