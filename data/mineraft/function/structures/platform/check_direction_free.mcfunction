scoreboard players set #direction_available mr.data 1

execute if score #new_support_value mr.data matches 1 positioned ~3 ~2.79 ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run scoreboard players set #direction_available mr.data 0

execute if score #new_support_value mr.data matches 2 positioned ~-3 ~2.79 ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run scoreboard players set #direction_available mr.data 0

execute if score #new_support_value mr.data matches 3 positioned ~ ~2.79 ~3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run scoreboard players set #direction_available mr.data 0

execute if score #new_support_value mr.data matches 4 positioned ~ ~2.79 ~-3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run scoreboard players set #direction_available mr.data 0
