execute unless data entity @e[type=item_display,tag=mr.target,limit=1] {data:{state:"idle"}} run return fail
execute as @e[type=item_display,tag=mr.target,limit=1] run data modify entity @s data.state set value "purifying"
execute as @e[type=item_display,tag=mr.target,limit=1] run function mineraft:structure/water_purifier/model {state:"saltwater"}
function mineraft:item/cup/use_water
playsound minecraft:entity.generic.splash block @a ~ ~ ~ 1 1
