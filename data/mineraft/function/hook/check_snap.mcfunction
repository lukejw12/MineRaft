execute unless items entity @s weapon.mainhand *[custom_data~{mr.hook:1b}] run return run function mineraft:hook/force_cleanup
scoreboard players operation #hp.caster_link hp.data = @s mr.link
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data at @s run function mineraft:hook/check_distance
