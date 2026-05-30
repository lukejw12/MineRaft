execute on passengers if entity @s[type=item,tag=mr.riding] run tag @s remove mr.riding
execute on passengers if entity @s[type=item,tag=mr.flotsam] run tag @s remove mr.flotsam
scoreboard players operation #hp.caster_link hp.data = @s hp.link
execute as @e[tag=hp.rope] if score @s hp.link = #hp.caster_link hp.data run kill @s
kill @s
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data run scoreboard players set @s hp.cooldown 4
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data run advancement revoke @s only hook_physics:use_hook
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data run function hook_physics:hook/restore_model
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data run tag @s remove hp.caster
