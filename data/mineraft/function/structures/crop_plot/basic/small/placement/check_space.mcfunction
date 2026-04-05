execute align xyz unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_trapdoor run return run kill @e[type=marker,tag=mr.small_crop_plot_raycast,limit=1,sort=nearest]
$execute align xyz positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) unless block ~ ~1 ~ air unless block ~ ~1 ~ iron_trapdoor run return run kill @e[type=marker,tag=mr.small_crop_plot_raycast,limit=1,sort=nearest]

$execute align xyz positioned ~$(block1_offset_x) ~ ~$(block1_offset_z) if block ~ ~1 ~ barrier run return run kill @e[type=marker,tag=mr.small_crop_plot_raycast,limit=1,sort=nearest]

execute align xyz positioned ~ ~1 ~ run function mineraft:structures/crop_plot/basic/small/spawn/spawn

execute as @a if score @s mr.link = #player_link mr.data run item modify entity @s weapon.mainhand mineraft:remove_one

kill @e[type=marker,tag=mr.small_crop_plot_raycast,limit=1,sort=nearest]