scoreboard players operation #support_id mr.data = @s mr.support_id

execute positioned ~ ~ ~ run setblock ~ ~ ~ air
execute positioned ~ ~1 ~ run setblock ~ ~ ~ air
execute positioned ~ ~2 ~ run setblock ~ ~ ~ air

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~1 ~ 0.3 0.5 0.3 0.1 50 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

execute positioned ~ ~2 ~ as @e[type=item_display,tag=mr.support_display,distance=..1,limit=1,sort=nearest] at @s run function mineraft:structures/support/destroy
kill @s
execute positioned ~ ~2 ~ as @e[type=item_display,tag=mr.platform_display,distance=..1,limit=1,sort=nearest] at @s run function mineraft:structures/platform/check_supports

