scoreboard players operation #fm.id mr.data = @s mr.id
scoreboard players operation #fm.fuel mr.data = @s mr.fuel
$execute as @e[type=item_display,tag=mr.p.fuel,distance=..3] if score @s mr.id = #fm.id mr.data run function mineraft:structure/common/fuel_$(style)
