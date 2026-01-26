tag @s add mr.checked

execute positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported,distance=..0.7] run tag @s add mr.supported
execute positioned ~3 ~ ~ as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported,distance=..0.7] run scoreboard players set #propagated mr.data 1

execute positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported,distance=..0.7] run tag @s add mr.supported
execute positioned ~-3 ~ ~ as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported,distance=..0.7] run scoreboard players set #propagated mr.data 1

execute positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported,distance=..0.7] run tag @s add mr.supported
execute positioned ~ ~ ~3 as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported,distance=..0.7] run scoreboard players set #propagated mr.data 1

execute positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported,distance=..0.7] run tag @s add mr.supported
execute positioned ~ ~ ~-3 as @e[type=item_display,tag=mr.platform_display,tag=!mr.supported,distance=..0.7] run scoreboard players set #propagated mr.data 1

