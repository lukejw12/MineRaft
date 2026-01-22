scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:platform platform_type set from entity @s data.platform_type

scoreboard players operation #rotation mr.data = @s mr.data

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] unless score @s mr.support_value matches 0 run return run kill @s

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s run function mineraft:structures/platform/check_can_extend

execute if score #can_extend mr.data matches 0 run return run kill @s

execute as @e[type=item_display,tag=mr.platform_display,distance=..2,limit=1,sort=nearest] at @s run function mineraft:structures/platform/try_extend

execute as @a if score @s mr.link = #player_link mr.data run clear @s *[custom_data~{mr.platform:1b}] 1

kill @s
