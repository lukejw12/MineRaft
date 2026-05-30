scoreboard players operation #hp.caster_link hp.data = @s mr.link
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data run tag @s remove hp.flying
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data run tag @s remove hp.floating
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data run tag @s add hp.reeling
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data run scoreboard players set @s hp.tick 0
