scoreboard players operation #player_link mr.data = @s mr.link
data modify storage mineraft:campfire preview_type set from entity @s data.campfire_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/campfire/spawn/calculate_rotation
execute align xyz run tp @s ~0.5 ~ ~0.5
function mineraft:grid/block/compute_slot
execute if score #slot_free mr.data matches 0 run function mineraft:structures/campfire/raycast/preview/hide
execute if score #slot_free mr.data matches 0 run return run kill @s
execute align xyz positioned ~ ~1 ~ unless block ~ ~ ~ air unless block ~ ~ ~ iron_trapdoor run function mineraft:structures/campfire/raycast/preview/hide
execute align xyz positioned ~ ~1 ~ unless block ~ ~ ~ air unless block ~ ~ ~ iron_trapdoor run return run kill @s
execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.campfire_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/campfire/spawn/spawn_block_preview
execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.campfire_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/campfire/spawn/spawn_preview with storage mineraft:campfire
execute as @e[type=item_display,tag=mr.new_campfire_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_campfire_preview] remove mr.new_campfire_preview
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.campfire_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~0.5 ~0.5
execute align xyz positioned ~ ~1 ~ run tp @e[type=block_display,tag=mr.campfire_block_preview,limit=1] ~ ~ ~
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.campfire_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/campfire/raycast/preview/apply_rotation with storage mineraft:campfire
kill @s