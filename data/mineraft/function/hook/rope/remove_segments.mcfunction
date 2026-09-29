scoreboard players operation #hp.max_idx hp.data = #hp.need_segs hp.data
execute as @e[tag=hp.rope] if score @s hp.link = #hp.caster_link hp.data if score @s hp.rope_idx >= #hp.max_idx hp.data run kill @s
