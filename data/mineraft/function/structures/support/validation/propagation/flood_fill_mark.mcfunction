scoreboard players set #filled_any mr.data 0

execute as @e[type=item_display,tag=mr.platform_display,tag=mr.needs_validation] at @s positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.7,tag=!mr.needs_validation] run tag @s add mr.newly_marked
execute as @e[type=item_display,tag=mr.platform_display,tag=mr.needs_validation] at @s positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_display,distance=..0.7,tag=!mr.needs_validation] run tag @s add mr.newly_marked
execute as @e[type=item_display,tag=mr.platform_display,tag=mr.needs_validation] at @s positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_display,distance=..0.7,tag=!mr.needs_validation] run tag @s add mr.newly_marked
execute as @e[type=item_display,tag=mr.platform_display,tag=mr.needs_validation] at @s positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_display,distance=..0.7,tag=!mr.needs_validation] run tag @s add mr.newly_marked

execute if entity @e[type=item_display,tag=mr.newly_marked] run scoreboard players set #filled_any mr.data 1

execute as @e[type=item_display,tag=mr.newly_marked] run tag @s add mr.needs_validation
tag @e[type=item_display,tag=mr.newly_marked] remove mr.newly_marked

execute if score #filled_any mr.data matches 1 run function mineraft:structures/support/validation/propagation/flood_fill_mark