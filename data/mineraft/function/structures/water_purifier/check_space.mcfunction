execute align xyz unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_trapdoor run return run kill @e[type=marker,tag=mr.purifier_raycast,limit=1,sort=nearest]
$execute align xyz positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_trapdoor run return run kill @e[type=marker,tag=mr.purifier_raycast,limit=1,sort=nearest]

$execute align xyz positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~1 ~ barrier run return run kill @e[type=marker,tag=mr.purifier_raycast,limit=1,sort=nearest]
$execute align xyz positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if entity @e[type=item_display,tag=mr.purifier_display,distance=..0.5] run return run kill @e[type=marker,tag=mr.purifier_raycast,limit=1,sort=nearest]
$execute align xyz positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if entity @e[type=item_display,tag=mr.smeltery_display,distance=..0.5] run return run kill @e[type=marker,tag=mr.purifier_raycast,limit=1,sort=nearest]

execute align xyz positioned ~ ~1 ~ run function mineraft:structures/water_purifier/spawn

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.purifier:1b}] 1

kill @e[type=marker,tag=mr.purifier_raycast,limit=1,sort=nearest]
