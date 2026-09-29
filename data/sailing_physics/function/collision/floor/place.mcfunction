execute unless entity @a[distance=..10] run return 0
execute positioned ~ ~-2 ~ if entity @e[tag=sp.ghast_free,distance=..1.5,limit=1] positioned ~ ~2 ~ run return run function sailing_physics:collision/floor/reuse
function sailing_physics:collision/floor/spawn
