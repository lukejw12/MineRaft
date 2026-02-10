execute on target run tag @s add mr.interacting
execute as @e[type=item_display,tag=mr.grill_display] if score @s mr.grill_id = @e[type=interaction,tag=mr.grill_interaction,sort=nearest,limit=1] mr.grill_id run tag @s add mr.target_grill
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.fuel:1b}] run function mineraft:structures/grill/interaction/fuel/add
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.grillable:1b}] run function mineraft:structures/grill/interaction/food/add
execute as @a[tag=mr.interacting] unless items entity @s weapon.mainhand * as @e[tag=mr.target_grill] if data entity @s {data:{state:"finished"}} run function mineraft:structures/grill/interaction/collect
execute on target if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] as @e[type=interaction,tag=mr.grill_interaction] if score @s mr.grill_id = @e[type=item_display,tag=mr.grill_display,sort=nearest,limit=1] mr.grill_id run function mineraft:structures/grill/core/destroy
data remove entity @s interaction
tag @a remove mr.interacting
tag @e remove mr.target_grill