scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:recycler recycler_type set from entity @s data.recycler_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/recycler/spawn/calculate_rotation

execute align xyz run tp @s ~0.5 ~ ~0.5
function mineraft:grid/block/compute_slot
execute if score #slot_free mr.data matches 0 run function mineraft:structures/recycler/raycast/preview/hide
execute if score #slot_free mr.data matches 0 run return run kill @s

execute align xyz unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_trapdoor run function mineraft:structures/recycler/raycast/preview/hide
execute align xyz unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_trapdoor run return run kill @s
execute align xyz if block ~ ~1 ~ barrier run function mineraft:structures/recycler/raycast/preview/hide
execute align xyz if block ~ ~1 ~ barrier run return run kill @s
execute align xyz unless block ~ ~2 ~ air unless block ~ ~2 ~ iron_trapdoor run function mineraft:structures/recycler/raycast/preview/hide
execute align xyz unless block ~ ~2 ~ air unless block ~ ~2 ~ iron_trapdoor run return run kill @s
execute align xyz if block ~ ~2 ~ barrier run function mineraft:structures/recycler/raycast/preview/hide
execute align xyz if block ~ ~2 ~ barrier run return run kill @s

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.recycler_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/recycler/spawn/spawn_preview with storage mineraft:recycler

execute as @e[type=item_display,tag=mr.new_recycler_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_recycler_preview] remove mr.new_recycler_preview

execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.recycler_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~1 ~0.5
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.recycler_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/recycler/raycast/preview/apply_rotation with storage mineraft:recycler

kill @s
