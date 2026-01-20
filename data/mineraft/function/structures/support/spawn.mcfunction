execute if entity @e[type=item_display,tag=mr.support_display,distance=..0.5] run return fail

execute positioned ~ ~ ~ unless block ~ ~ ~ air unless block ~ ~ ~ iron_bars run return fail
execute positioned ~ ~1 ~ unless block ~ ~ ~ air unless block ~ ~ ~ iron_bars run return fail
execute positioned ~ ~2 ~ unless block ~ ~ ~ air unless block ~ ~ ~ iron_bars run return fail

setblock ~ ~ ~ iron_bars
setblock ~ ~1 ~ iron_bars
setblock ~ ~2 ~ iron_bars

function mineraft:structures/support/spawn_display with storage mineraft:support

execute as @e[type=item_display,tag=mr.new_support,limit=1] run data modify entity @s data.support_type set from storage mineraft:support support_type
execute as @e[type=item_display,tag=mr.new_support,limit=1] store result score @s mr.support_id run scoreboard players add #global mr.support_id 1
execute as @e[type=item_display,tag=mr.new_support,limit=1] run scoreboard players set @s mr.support_count 0

tag @e[type=item_display,tag=mr.new_support] remove mr.new_support

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1