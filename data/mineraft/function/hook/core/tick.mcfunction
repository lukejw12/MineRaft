execute as @a[scores={hp.cooldown=1..}] run scoreboard players remove @s hp.cooldown 1
execute as @e[tag=hp.hook,tag=hp.flying] at @s run function mineraft:hook/fly
execute as @e[tag=hp.hook,tag=hp.floating] at @s run function mineraft:hook/float
execute as @e[tag=hp.hook,tag=hp.reeling] at @s run function mineraft:hook/reel
execute as @a[tag=hp.caster] at @s run function mineraft:hook/check_snap
execute as @a[tag=hp.caster] unless items entity @s weapon.mainhand *[minecraft:custom_data~{"mr.hook":1b}] run function mineraft:hook/force_cleanup
scoreboard players add #hp.rope_tick hp.data 1
execute if score #hp.rope_tick hp.data matches 3.. as @a[tag=hp.caster] run function mineraft:hook/rope/update_all
execute if score #hp.rope_tick hp.data matches 3.. run scoreboard players set #hp.rope_tick hp.data 0
execute as @e[type=item_display,tag=hp.hook_visual] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} run kill @s
