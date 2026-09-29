execute as @e[type=item,tag=mr.flotsam,tag=mr.catch] at @s if entity @e[type=fishing_bobber,distance=..0.5] run tag @s remove mr.catch
execute as @e[type=item,tag=mr.flotsam,tag=mr.catch] at @s if entity @e[type=fishing_bobber,distance=..0.5] run tag @s add mr.hooked
execute as @e[type=item,tag=mr.flotsam,tag=mr.hooked] at @s unless entity @e[type=fishing_bobber,distance=..2] run tag @s remove mr.hooked
execute as @e[type=item,tag=mr.flotsam,tag=!mr.hooked] at @s if entity @e[type=fishing_bobber,distance=..4] run tp @s ~ 63 ~
execute as @e[type=item,tag=mr.flotsam,tag=!mr.hooked] at @s if entity @e[type=fishing_bobber,distance=..4] run data modify entity @s Motion[1] set value 0d
execute as @e[type=item,tag=mr.flotsam,tag=!mr.catch,tag=!mr.hooked] at @s as @e[type=fishing_bobber,distance=..4,limit=1,sort=nearest] run data modify entity @s Motion[0] set value 0d
execute as @e[type=item,tag=mr.flotsam,tag=!mr.catch,tag=!mr.hooked] at @s as @e[type=fishing_bobber,distance=..4,limit=1,sort=nearest] run data modify entity @s Motion[2] set value 0d
execute as @e[type=item,tag=mr.flotsam,tag=!mr.catch,tag=!mr.hooked] at @s as @e[type=fishing_bobber,distance=..4,limit=1,sort=nearest] at @e[type=item,tag=mr.flotsam,distance=..4,limit=1,sort=nearest] run tp @s ~ ~0.6 ~
execute as @e[type=item,tag=mr.flotsam,tag=!mr.hooked] at @s if entity @e[type=fishing_bobber,distance=..4] run tag @s add mr.catch
execute as @e[type=item,tag=mr.catch] at @s unless entity @e[type=fishing_bobber,distance=..4] run tag @s remove mr.catch
