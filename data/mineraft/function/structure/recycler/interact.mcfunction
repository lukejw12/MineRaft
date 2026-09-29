execute if entity @a[tag=mr.interacting,predicate=mineraft:is_sneaking] if data entity @s {data:{has_battery:1b}} run return run function mineraft:structure/recycler/battery_out
execute if entity @a[tag=mr.interacting,predicate=mineraft:is_sneaking] run return 0
execute unless data entity @s {data:{has_battery:1b}} if items entity @a[tag=mr.interacting,limit=1] weapon.mainhand *[custom_data~{mr.battery:1b}] run return run function mineraft:structure/recycler/battery_in
execute as @a[tag=mr.interacting,limit=1] if items entity @s weapon.mainhand *[custom_data~{mr.recyclable:1b}] run return run function mineraft:structure/recycler/add_material
execute if data entity @s {data:{state:"finished"}} unless items entity @a[tag=mr.interacting,limit=1] weapon.mainhand * run function mineraft:structure/recycler/collect
