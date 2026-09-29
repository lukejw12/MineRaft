execute unless score @e[type=item_display,tag=mr.target,limit=1] mr.fuel matches ..199 run return fail
function mineraft:structure/common/fuel_value
item modify entity @s weapon.mainhand mineraft:remove_one
execute as @e[type=item_display,tag=mr.target,limit=1] at @s run function mineraft:structure/smelter/fuel_added
