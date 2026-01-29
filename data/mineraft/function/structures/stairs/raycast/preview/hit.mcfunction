scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:stairs stairs_type set from entity @s data.stairs_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/stairs/placement/models/calculate_rotation

execute align xyz positioned ~ ~1 ~ if data storage mineraft:stairs {direction:"south"} positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=mr.stairs_shulker,dx=0,dy=2,dz=3] run return run function mineraft:structures/stairs/raycast/preview/hide
execute align xyz positioned ~ ~1 ~ if data storage mineraft:stairs {direction:"north"} positioned ~ ~ ~-1 if entity @e[type=armor_stand,tag=mr.stairs_shulker,dx=0,dy=2,dz=3] run return run function mineraft:structures/stairs/raycast/preview/hide
execute align xyz positioned ~ ~1 ~ if data storage mineraft:stairs {direction:"east"} positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=mr.stairs_shulker,dx=3,dy=2,dz=0] run return run function mineraft:structures/stairs/raycast/preview/hide
execute align xyz positioned ~ ~1 ~ if data storage mineraft:stairs {direction:"west"} positioned ~-1 ~ ~ if entity @e[type=armor_stand,tag=mr.stairs_shulker,dx=3,dy=2,dz=0] run return run function mineraft:structures/stairs/raycast/preview/hide

function mineraft:structures/stairs/placement/models/get

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.stairs_preview] run function mineraft:structures/stairs/placement/spawn/preview with storage mineraft:stairs

execute as @e[type=item_display,tag=mr.new_stairs_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
tag @e[type=item_display,tag=mr.new_stairs_preview] remove mr.new_stairs_preview

execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.stairs_preview] if score @s mr.link = #player_link mr.data run tp @s ~0.5 ~ ~0.5
execute align xyz positioned ~ ~1 ~ as @e[type=item_display,tag=mr.stairs_preview] if score @s mr.link = #player_link mr.data run function mineraft:structures/stairs/raycast/preview/apply_rotation with storage mineraft:stairs

kill @s