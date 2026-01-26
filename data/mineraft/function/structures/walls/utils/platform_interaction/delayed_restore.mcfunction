
execute as @e[type=item_display,tag=mr.platform_display,tag=mr.needs_barrier_restore] at @s run function mineraft:structures/walls/utils/platform_interaction/restore
tag @e[type=item_display,tag=mr.needs_barrier_restore] remove mr.needs_barrier_restore
