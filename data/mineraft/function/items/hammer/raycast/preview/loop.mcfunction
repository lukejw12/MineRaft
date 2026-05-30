tp @s ^ ^ ^0.1
scoreboard players remove @s mr.raycast_dist 1

execute as @e[type=item_display,tag=mr.support_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_ptarget
execute unless entity @e[tag=mr.hammer_ptarget] as @e[type=item_display,tag=mr.stairs_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_ptarget
execute unless entity @e[tag=mr.hammer_ptarget] as @e[type=item_display,tag=mr.wall_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_ptarget
execute unless entity @e[tag=mr.hammer_ptarget] as @e[type=item_display,tag=mr.structure_display,tag=!mr.platform_display,tag=!mr.support_display,tag=!mr.stairs_display,tag=!mr.wall_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_ptarget
execute unless entity @e[tag=mr.hammer_ptarget] as @e[type=item_display,tag=mr.crop_plot_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_ptarget
execute unless entity @e[tag=mr.hammer_ptarget] as @e[type=item_display,tag=mr.net_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_ptarget
execute unless entity @e[tag=mr.hammer_ptarget] as @e[type=item_display,tag=mr.platform_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_ptarget
execute unless entity @e[tag=mr.hammer_ptarget] as @e[type=item_display,tag=mr.foundation,tag=!mr.net_display,distance=..1.5,limit=1,sort=nearest] run tag @s add mr.hammer_ptarget

execute unless entity @e[tag=mr.hammer_ptarget] if score @s mr.raycast_dist matches ..0 run function mineraft:items/hammer/raycast/preview/miss
execute unless entity @e[tag=mr.hammer_ptarget] if score @s mr.raycast_dist matches ..0 run return run kill @s
execute unless entity @e[tag=mr.hammer_ptarget] run return run execute positioned ^ ^ ^0.1 run function mineraft:items/hammer/raycast/preview/loop

execute if entity @e[tag=mr.hammer_ptarget,tag=mr.support_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"support",tag:"mr.support_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.stairs_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"stairs",tag:"mr.stairs_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.wall_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"wall",tag:"mr.wall_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.campfire_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"campfire",tag:"mr.campfire_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.grill_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"grill",tag:"mr.grill_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.smeltery_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"smeltery",tag:"mr.smeltery_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.purifier_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"purifier",tag:"mr.purifier_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.recycler_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"recycler",tag:"mr.recycler_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.small_crop_plot_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"small_crop_plot",tag:"mr.small_crop_plot_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.small_adv_crop_plot_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"small_adv_crop_plot",tag:"mr.small_adv_crop_plot_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.crop_plot_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"crop_plot",tag:"mr.crop_plot_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.net_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"net",tag:"mr.net_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.platform_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"platform",tag:"mr.platform_display"}
execute if entity @e[tag=mr.hammer_ptarget,tag=mr.foundation,tag=!mr.net_display] run function mineraft:items/hammer/raycast/preview/hit {structure:"foundation",tag:"mr.foundation"}

tag @e[tag=mr.hammer_ptarget] remove mr.hammer_ptarget
kill @s
