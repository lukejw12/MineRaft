execute as @a[scores={hp.cooldown=1..}] run scoreboard players remove @s hp.cooldown 1
execute as @e[tag=hp.hook,tag=hp.flying] at @s run function hook_physics:hook/fly
execute as @e[tag=hp.hook,tag=hp.floating] at @s run function hook_physics:hook/float
execute as @e[tag=hp.hook,tag=hp.reeling] at @s run function hook_physics:hook/reel
execute as @a[tag=hp.caster] at @s run function hook_physics:hook/check_snap
scoreboard players add #hp.rope_tick hp.data 1
execute if score #hp.rope_tick hp.data matches 3.. as @a[tag=hp.caster] run function hook_physics:rope/update_all
execute if score #hp.rope_tick hp.data matches 3.. run scoreboard players set #hp.rope_tick hp.data 0
