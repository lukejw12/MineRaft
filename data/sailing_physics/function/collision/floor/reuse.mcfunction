execute positioned ~ ~-2 ~ as @e[tag=sp.ghast_free,distance=..1.5,sort=nearest,limit=1] run tag @s add sp.ghast_pick
tp @e[tag=sp.ghast_pick,limit=1] ~ ~-2 ~
tag @e[tag=sp.ghast_pick] remove sp.ghast_free
tag @e[tag=sp.ghast_pick] remove sp.ghast_pick
