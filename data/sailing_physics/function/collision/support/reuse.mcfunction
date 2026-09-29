execute as @e[tag=sp.sup_free,distance=..0.5,sort=nearest,limit=1] run tag @s add sp.sup_pick
tp @e[tag=sp.sup_pick,limit=1] ~ ~ ~
tag @e[tag=sp.sup_pick] remove sp.sup_free
tag @e[tag=sp.sup_pick] remove sp.sup_pick
