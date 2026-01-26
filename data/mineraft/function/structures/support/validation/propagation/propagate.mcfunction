scoreboard players set #propagated mr.data 0

execute as @e[type=item_display,tag=mr.platform_display,tag=mr.supported,tag=!mr.checked] at @s run function mineraft:structures/support/validation/propagation/to_neighbors

execute if score #propagated mr.data matches 1 run function mineraft:structures/support/validation/propagation/propagate