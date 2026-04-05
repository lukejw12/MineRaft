scoreboard players set #can_extend mr.data 0

execute positioned ~0.5 ~-3 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] if data entity @s {data:{grid:{has_support:1b}}} run function mineraft:grid/support/has_capacity
execute if score #has_capacity mr.data matches 1 run scoreboard players set #can_extend mr.data 1

execute if score #can_extend mr.data matches 0 if entity @e[type=item_display,tag=mr.wall_display,tag=!mr.supporting_platform,distance=..4] run scoreboard players set #can_extend mr.data 1

execute if score #can_extend mr.data matches 0 run scoreboard players operation #check_support_id mr.data = @s mr.support_id
execute if score #can_extend mr.data matches 0 as @e[type=item_display,tag=mr.support_display] if score @s mr.support_id = #check_support_id mr.data if score @s mr.support_count matches ..8 run scoreboard players set #can_extend mr.data 1
