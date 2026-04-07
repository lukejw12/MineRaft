tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute as @e[type=item_display,tag=mr.structure_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_target
execute unless entity @e[tag=mr.hammer_target] as @e[type=item_display,tag=mr.foundation,distance=..1.5,limit=1,sort=nearest,tag=!mr.structure_display] run tag @s add mr.hammer_target

execute unless entity @e[tag=mr.hammer_target] if score @s mr.raycast_dist matches ..0 run return run kill @s
execute unless entity @e[tag=mr.hammer_target] run return run execute positioned ^ ^ ^0.1 run function mineraft:items/hammer/raycast/loop

execute as @e[tag=mr.hammer_target,tag=mr.grill_display,limit=1] run function mineraft:items/hammer/destroy/grill
execute as @e[tag=mr.hammer_target,tag=mr.smeltery_display,limit=1] run function mineraft:items/hammer/destroy/smeltery
execute as @e[tag=mr.hammer_target,tag=mr.purifier_display,limit=1] run function mineraft:items/hammer/destroy/purifier
execute as @e[tag=mr.hammer_target,tag=mr.small_crop_plot_display,limit=1] run function mineraft:items/hammer/destroy/small_crop_plot
execute as @e[tag=mr.hammer_target,tag=mr.small_adv_crop_plot_display,limit=1] run function mineraft:items/hammer/destroy/small_adv_crop_plot
execute as @e[tag=mr.hammer_target,tag=mr.support_display,limit=1] run function mineraft:items/hammer/destroy/support
execute as @e[tag=mr.hammer_target,tag=mr.stairs_display,limit=1] run function mineraft:items/hammer/destroy/stairs
execute as @e[tag=mr.hammer_target,tag=mr.wall_display,limit=1] run function mineraft:items/hammer/destroy/wall
execute as @e[tag=mr.hammer_target,tag=mr.net_display,limit=1] run function mineraft:items/hammer/destroy/net
execute as @e[tag=mr.hammer_target,tag=mr.platform_display,limit=1] run function mineraft:items/hammer/destroy/platform
execute as @e[tag=mr.hammer_target,tag=mr.crop_plot_display,limit=1] run function mineraft:items/hammer/destroy/crop_plot
execute as @e[tag=mr.hammer_target,tag=mr.foundation,tag=!mr.net_display,limit=1] run function mineraft:items/hammer/destroy/foundation

tag @e[tag=mr.hammer_target] remove mr.hammer_target
kill @s
