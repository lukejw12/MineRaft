execute if entity @e[type=item_display,tag=mr.center,distance=..1] run return fail
function mineraft:core/foundation/models/get_model

fill ~1 62 ~1 ~-1 61 ~-1 barrier[waterlogged=true]
function mineraft:core/foundation/spawn_display with storage mineraft:foundations

execute as @a if score @s mr.link = #player_link mr.data run item modify entity @s weapon.mainhand mineraft:remove_one

playsound block.anvil.use block @a[distance=..10] ~ ~ ~ 100 2 1