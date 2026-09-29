execute positioned ~ ~-0.55 ~ as @e[tag=sp.plat_free,distance=..0.5,sort=nearest,limit=1] run tag @s add sp.plat_pick
tp @e[tag=sp.plat_pick,limit=1] ~ ~-0.55 ~
tag @e[tag=sp.plat_pick] remove sp.plat_free
tag @e[tag=sp.plat_pick] remove sp.plat_pick
