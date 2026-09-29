advancement revoke @s only mineraft:technical/hitbox_use
tag @s add mr.interacting
execute as @e[type=interaction,tag=mr.hitbox,distance=..10] if data entity @s interaction run function mineraft:structure/hitbox/check_use
tag @s remove mr.interacting
