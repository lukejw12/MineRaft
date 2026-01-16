execute on target run tag @s add mr.interacting
execute as @e[type=item_display,tag=mr.smeltery_display] if score @s mr.smeltery_id = @e[type=interaction,tag=mr.smeltery_interaction,sort=nearest,limit=1] mr.smeltery_id run tag @s add mr.target_smeltery
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.fuel:1b}] run function mineraft:structures/smeltery/interact/add_fuel
execute as @a[tag=mr.interacting] if items entity @s weapon.mainhand *[custom_data~{mr.smeltable:1b}] run function mineraft:structures/smeltery/interact/add_ore
execute as @a[tag=mr.interacting] unless items entity @s weapon.mainhand * as @e[tag=mr.target_smeltery] if data entity @s {data:{state:"finished"}} run function mineraft:structures/smeltery/interact/collect
data remove entity @s interaction
tag @a remove mr.interacting
tag @e remove mr.target_smeltery