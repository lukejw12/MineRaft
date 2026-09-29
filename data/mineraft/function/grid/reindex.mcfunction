scoreboard players operation #grid.sail mr.data = #sp.sailing sp.data
scoreboard players set #sp.sailing sp.data 0
data modify storage mineraft:grid cell set value {}
data modify storage mineraft:grid floor set value {}
data modify storage mineraft:grid tile set value {}
data modify storage mineraft:grid edge set value {}
data modify storage mineraft:grid armor set value {}
data modify storage mineraft:grid block set value {}
execute as @e[type=item_display,tag=mr.t.foundation,limit=1] run function mineraft:grid/set_lattice
execute as @e[type=item_display,tag=mr.root] at @s run function mineraft:structure/claim/reapply
execute as @e[type=item_display,tag=mr.root] at @s run function mineraft:structure/collision/apply
scoreboard players operation #sp.sailing sp.data = #grid.sail mr.data
