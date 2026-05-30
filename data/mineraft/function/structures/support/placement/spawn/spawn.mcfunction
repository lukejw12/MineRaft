execute positioned ~ ~ ~ unless block ~ ~ ~ air unless block ~ ~ ~ iron_bars run return fail
execute positioned ~ ~1 ~ unless block ~ ~ ~ air unless block ~ ~ ~ iron_bars run return fail
execute positioned ~ ~2 ~ unless block ~ ~ ~ #support-valid-blocks unless block ~ ~ ~ iron_bars run return fail

function mineraft:structures/support/placement/models/get

setblock ~ ~ ~ iron_bars
setblock ~ ~1 ~ iron_bars
setblock ~ ~2 ~ iron_bars
function mineraft:core/structure/cache_item
execute as @a if score @s mr.link = #player_link mr.data unless entity @s[gamemode=creative] run clear @s *[custom_data~{mr.support:1b}] 1

function mineraft:structures/support/placement/spawn/display with storage mineraft:support

execute as @e[type=item_display,tag=mr.new_support,limit=1] run data modify entity @s data.support_type set from storage mineraft:support support_type
execute as @e[type=item_display,tag=mr.new_support,limit=1] store result score @s mr.support_id run scoreboard players add #global mr.support_id 1
execute as @e[type=item_display,tag=mr.new_support,limit=1] run scoreboard players set @s mr.support_count 0

execute as @e[type=item_display,tag=mr.new_support,limit=1] at @s run function mineraft:grid/support/register

data modify storage mineraft:grid type set value "support"
data modify storage mineraft:grid h set value 3
execute as @e[type=item_display,tag=mr.surface,distance=..5,limit=1,sort=nearest] run function mineraft:grid/block/claim with storage mineraft:grid

execute as @e[type=item_display,tag=mr.new_support,limit=1] run function mineraft:core/structure/store_item
tag @e[type=item_display,tag=mr.new_support] remove mr.new_support

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1
