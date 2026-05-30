execute on target run tag @s add mr.interacting
execute as @e[type=item_display,tag=mr.campfire_display] if score @s mr.campfire_id = @e[type=interaction,tag=mr.campfire_interaction,sort=nearest,limit=1] mr.campfire_id run tag @s add mr.target_campfire
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.fuel:1b}] run function mineraft:structures/campfire/interaction/fuel/add
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.grillable:1b}] run function mineraft:structures/campfire/interaction/food/add
execute as @a[tag=mr.interacting] unless items entity @s weapon.mainhand * run function mineraft:structures/campfire/interaction/collect
execute on target if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] as @e[type=interaction,tag=mr.campfire_interaction] if score @s mr.campfire_id = @e[type=item_display,tag=mr.campfire_display,sort=nearest,limit=1] mr.campfire_id run function mineraft:structures/campfire/core/destroy
data remove entity @s interaction
tag @a remove mr.interacting
tag @e remove mr.target_campfire
