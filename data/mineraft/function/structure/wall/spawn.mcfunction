execute if data entity @s data.mr{rot:0} run data modify entity @s data.side set value "south"
execute if data entity @s data.mr{rot:1} run data modify entity @s data.side set value "west"
execute if data entity @s data.mr{rot:2} run data modify entity @s data.side set value "north"
execute if data entity @s data.mr{rot:3} run data modify entity @s data.side set value "east"
data modify entity @s data.wall_type set from storage mineraft:tmp pl.variant
function mineraft:structure/wall/corners
execute as @e[type=item_display,tag=mr.p.pillar,distance=..5] at @s run function mineraft:structure/wall/pillar_valid
