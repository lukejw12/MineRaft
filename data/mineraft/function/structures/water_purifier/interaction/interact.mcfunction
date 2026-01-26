execute on target run tag @s add mr.interacting

execute as @e[type=item_display,tag=mr.purifier_display] if score @s mr.purifier_id = @e[type=interaction,tag=mr.purifier_interaction,sort=nearest,limit=1] mr.purifier_id run tag @s add mr.target_purifier

execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.fuel:1b}] run function mineraft:structures/water_purifier/interaction/fuel/add
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.pail-saltwater:1b}] run function mineraft:structures/water_purifier/interaction/water/add_saltwater
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.pail-empty:1b}] as @e[tag=mr.target_purifier] if data entity @s {data:{state:"purified"}} run function mineraft:structures/water_purifier/interaction/collect

data remove entity @s interaction
tag @a remove mr.interacting
tag @e remove mr.target_purifier