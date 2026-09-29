scoreboard players operation #hm.link mr.data = @s mr.link
function mineraft:item/hammer/ray
execute as @e[type=item_display,tag=mr.hammer_glow] if score @s mr.glow = #hm.link mr.data unless entity @s[tag=mr.hammer_target] run function mineraft:item/hammer/unglow
execute as @e[type=item_display,tag=mr.hammer_target,limit=1] run function mineraft:item/hammer/glow
tag @e[type=item_display,tag=mr.hammer_target] remove mr.hammer_target
tag @s add mr.hammer_aiming
