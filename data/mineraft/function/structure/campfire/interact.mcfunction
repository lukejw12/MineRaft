execute as @a[tag=mr.interacting,limit=1] if items entity @s weapon.mainhand *[custom_data~{mr.fuel:1b}] run return run function mineraft:structure/campfire/add_fuel
execute as @a[tag=mr.interacting,limit=1] if items entity @s weapon.mainhand *[custom_data~{mr.grillable:1b}] run return run function mineraft:structure/campfire/add_food
execute unless items entity @a[tag=mr.interacting,limit=1] weapon.mainhand * run function mineraft:structure/campfire/collect
