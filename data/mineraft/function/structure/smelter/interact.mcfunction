execute as @a[tag=mr.interacting,limit=1] if items entity @s weapon.mainhand *[custom_data~{mr.fuel:1b}] run return run function mineraft:structure/smelter/add_fuel
execute as @a[tag=mr.interacting,limit=1] if items entity @s weapon.mainhand *[custom_data~{mr.smeltable:1b}] run return run function mineraft:structure/smelter/add_ore
execute if data entity @s {data:{state:"finished"}} unless items entity @a[tag=mr.interacting,limit=1] weapon.mainhand * run function mineraft:structure/smelter/collect
