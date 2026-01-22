execute if entity @e[tag=mr.support] run say support here --check_supports
scoreboard players set #support_count mr.data 0
execute if score @s mr.support_value matches 0 positioned ~ ~-2 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..1] run say test
execute if score @s mr.support_value matches 0 positioned ~ ~-2 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..1] if score @s mr.support_id = @e[type=item_display,tag=mr.support_display,distance=..1,limit=1] mr.support_id run scoreboard players set #support_count mr.data 1
execute if score @s mr.support_value matches 1 positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] if score @s mr.support_id = @e[type=item_display,tag=mr.platform_display,distance=..0.7,limit=1] mr.support_id run scoreboard players set #support_count mr.data 1

execute if score @s mr.support_value matches 2 positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] if score @s mr.support_id = @e[type=item_display,tag=mr.platform_display,distance=..0.7,limit=1] mr.support_id run scoreboard players set #support_count mr.data 1

execute if score @s mr.support_value matches 3 positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] if score @s mr.support_id = @e[type=item_display,tag=mr.platform_display,distance=..0.7,limit=1] mr.support_id run scoreboard players set #support_count mr.data 1

execute if score @s mr.support_value matches 4 positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] if score @s mr.support_id = @e[type=item_display,tag=mr.platform_display,distance=..0.7,limit=1] mr.support_id run scoreboard players set #support_count mr.data 1

execute if score @s mr.support_value matches 99 as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run scoreboard players set #support_count mr.data 1

#execute if entity @e[tag=debug] if score #support_count mr.data matches 0 run function mineraft:structures/platform/destroy
execute unless entity @e[tag=mr.support] run say support gone --check_supports
