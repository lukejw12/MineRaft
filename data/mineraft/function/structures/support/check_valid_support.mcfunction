scoreboard players set #has_valid_support mr.data 0

execute store result storage mineraft:debug platform_support_id int 1 run scoreboard players get @s mr.support_id
function mineraft:structures/support/debug_platform_support_id with storage mineraft:debug

execute if score @s mr.support_value matches 0 positioned ~ ~-2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1] if score @s mr.support_id = @e[type=item_display,tag=mr.platform_display,sort=nearest,limit=1,tag=mr.needs_validation] mr.support_id run scoreboard players set #has_valid_support mr.data 1

execute if score @s mr.support_value matches 1 positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.7,limit=1,tag=!mr.needs_validation] run scoreboard players set #has_valid_support mr.data 1

execute if score @s mr.support_value matches 2 positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.7,limit=1,tag=!mr.needs_validation] run scoreboard players set #has_valid_support mr.data 1

execute if score @s mr.support_value matches 3 positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.7,limit=1,tag=!mr.needs_validation] run scoreboard players set #has_valid_support mr.data 1

execute if score @s mr.support_value matches 4 positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.7,limit=1,tag=!mr.needs_validation] run scoreboard players set #has_valid_support mr.data 1

execute if score @s mr.support_value matches 99 as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run scoreboard players set #has_valid_support mr.data 1

execute if score #has_valid_support mr.data matches 1 run tag @s remove mr.needs_validation
execute if score #has_valid_support mr.data matches 1 run scoreboard players set #validated_any mr.data 1