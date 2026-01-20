scoreboard players set #support_count mr.data 0

execute positioned ~ ~-3 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players add #support_count mr.data 1
execute positioned ~3 ~-3 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players add #support_count mr.data 1
execute positioned ~-3 ~-3 ~ if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players add #support_count mr.data 1
execute positioned ~ ~-3 ~3 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players add #support_count mr.data 1
execute positioned ~ ~-3 ~-3 if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run scoreboard players add #support_count mr.data 1

execute as @e[type=item_display,tag=mr.wall_display,tag=mr.supporting_platform,distance=..4] run scoreboard players add #support_count mr.data 1

#execute positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run scoreboard players add #support_count mr.data 1
#execute positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run scoreboard players add #support_count mr.data 1
#execute positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run scoreboard players add #support_count mr.data 1
#execute positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.platform_display,distance=..0.5] run scoreboard players add #support_count mr.data 1

tellraw @a ["§e[DEBUG] check_supports: count = ",{"score":{"name":"#support_count","objective":"mr.data"}}]

execute if score #support_count mr.data matches 0 run tellraw @a ["§c[DEBUG] NO SUPPORTS FOUND - destroying platform"]
execute if score #support_count mr.data matches 0 run function mineraft:structures/platform/destroy