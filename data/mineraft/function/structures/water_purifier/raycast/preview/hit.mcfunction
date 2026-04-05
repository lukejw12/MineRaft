scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:purifier purifier_type set from entity @s data.purifier_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/water_purifier/placement/calculate_rotation

execute align xyz run tp @s ~0.5 ~ ~0.5
execute store result score #hit_bx mr.data run data get entity @s Pos[0]
execute store result score #hit_bz mr.data run data get entity @s Pos[2]
data modify storage mineraft:grid block1_offset_x set from storage mineraft:purifier block1_offset_x
data modify storage mineraft:grid block1_offset_z set from storage mineraft:purifier block1_offset_z
scoreboard players set #slot_free mr.data 0
execute as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/compute_and_check_pair
execute if score #slot_free mr.data matches 0 run function mineraft:structures/water_purifier/raycast/preview/hide
execute if score #slot_free mr.data matches 0 run return run kill @s

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.purifier_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/water_purifier/spawn/spawn_preview with storage mineraft:purifier

execute as @e[type=item_display,tag=mr.new_purifier_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_purifier_preview] remove mr.new_purifier_preview

execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.purifier_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~0.5 ~0.5
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.purifier_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/water_purifier/raycast/preview/apply_rotation with storage mineraft:purifier

kill @s
