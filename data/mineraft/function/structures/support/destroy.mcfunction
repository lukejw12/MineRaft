scoreboard players operation #support_id mr.data = @s mr.support_id

execute positioned ~ ~ ~ run setblock ~ ~ ~ air
execute positioned ~ ~1 ~ run setblock ~ ~ ~ air
execute positioned ~ ~2 ~ run setblock ~ ~ ~ air

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~1 ~ 0.3 0.5 0.3 0.1 50 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

say Killing support display first
kill @s

execute positioned ~ ~2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1,sort=nearest] at @s run function mineraft:structures/support/destroy

say Marking platforms directly on this support
execute as @e[type=item_display,tag=mr.platform_display] if score @s mr.support_id = #support_id mr.data if score @s mr.support_value matches 0 run tag @s add mr.needs_validation

say Flood-filling connected platforms
scoreboard players set #filled_any mr.data 1
function mineraft:structures/support/flood_fill_mark

say Starting validation passes
scoreboard players set #pass_count mr.data 0
function mineraft:structures/support/validate_pass

say Destroying unvalidated platforms
execute as @e[type=item_display,tag=mr.platform_display,tag=mr.needs_validation] at @s run function mineraft:structures/platform/destroy_no_cascade
