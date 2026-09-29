advancement revoke @s only mineraft:technical/hitbox_attack
tag @s add mr.interacting
execute as @e[type=interaction,tag=mr.hitbox,distance=..10] if data entity @s attack run function mineraft:structure/hitbox/check_attack
tag @s remove mr.interacting
