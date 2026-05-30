scoreboard players set #hp.caster_near hp.data 0
scoreboard players operation #hp.hook_link hp.data = @s hp.link
execute as @a[tag=hp.caster,distance=..35] if score @s mr.link = #hp.hook_link hp.data run scoreboard players set #hp.caster_near hp.data 1
execute if score #hp.caster_near hp.data matches 0 run function hook_physics:hook/force_cleanup_from_hook
