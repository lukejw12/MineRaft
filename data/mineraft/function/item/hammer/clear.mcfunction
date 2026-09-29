scoreboard players operation #hm.link mr.data = @s mr.link
execute as @e[type=item_display,tag=mr.hammer_glow] if score @s mr.glow = #hm.link mr.data run function mineraft:item/hammer/unglow
tag @s remove mr.hammer_aiming
