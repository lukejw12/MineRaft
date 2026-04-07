execute on target run tag @s add mr.interacting
execute as @e[type=item_display,tag=mr.recycler_display] if score @s mr.recycler_id = @e[type=interaction,tag=mr.recycler_interaction,sort=nearest,limit=1] mr.recycler_id run tag @s add mr.target_recycler
execute as @a[tag=mr.interacting] if predicate mineraft:is_sneaking as @e[tag=mr.target_recycler] if data entity @s {data:{has_battery:1b}} run function mineraft:structures/recycler/interaction/battery/remove
execute as @a[tag=mr.interacting] unless predicate mineraft:is_sneaking if items entity @s weapon.mainhand *[custom_data~{mr.battery:1b}] as @e[tag=mr.target_recycler] unless data entity @s {data:{has_battery:1b}} run function mineraft:structures/recycler/interaction/battery/insert
execute as @a[tag=mr.interacting] unless predicate mineraft:is_sneaking if items entity @s weapon.mainhand *[custom_data~{mr.recyclable:1b}] run function mineraft:structures/recycler/interaction/material/add
execute as @a[tag=mr.interacting] unless predicate mineraft:is_sneaking unless items entity @s weapon.mainhand * as @e[tag=mr.target_recycler] if data entity @s {data:{state:"finished"}} run function mineraft:structures/recycler/interaction/collect
execute on target if items entity @s weapon.mainhand *[custom_data~{mr.hammer:1b}] as @e[type=item_display,tag=mr.recycler_display] if score @s mr.recycler_id = @e[type=interaction,tag=mr.recycler_interaction,sort=nearest,limit=1] mr.recycler_id run function mineraft:structures/recycler/core/destroy
data remove entity @s interaction
tag @a remove mr.interacting
tag @e remove mr.target_recycler
