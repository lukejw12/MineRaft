execute as @e[type=item_display,tag=mr.hammer_glowing,tag=!mr.hammer_target_current] run function mineraft:items/hammer/raycast/preview/remove_glow
tag @e[type=item_display,tag=mr.hammer_glowing] remove mr.hammer_glowing
tag @s add mr.hammer_glowing
tag @s add mr.hammer_target_current
data merge entity @s {Glowing:true,glow_color_override:16711680}
