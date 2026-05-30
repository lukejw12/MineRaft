scoreboard players operation #hp.caster_link hp.data = @s hp.link
execute on passengers run tag @s remove mr.riding
execute on passengers run tag @s remove mr.flotsam
execute as @e[tag=hp.rope] if score @s hp.link = #hp.caster_link hp.data run kill @s
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data run advancement revoke @s only hook_physics:use_hook
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data run tag @s remove hp.caster
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data run scoreboard players set @s hp.cooldown 4
kill @s
