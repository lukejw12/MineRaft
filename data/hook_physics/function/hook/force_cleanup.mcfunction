scoreboard players operation #hp.caster_link hp.data = @s mr.link
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data on passengers run tag @s remove mr.riding
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data on passengers run tag @s remove mr.flotsam
execute as @e[tag=hp.rope] if score @s hp.link = #hp.caster_link hp.data run kill @s
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data run kill @s
advancement revoke @s only hook_physics:use_hook
function hook_physics:hook/restore_model
tag @s remove hp.caster
scoreboard players set @s hp.cooldown 4
