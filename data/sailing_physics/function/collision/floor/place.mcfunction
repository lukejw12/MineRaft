execute unless entity @a[distance=..10] run return 0
execute if entity @e[tag=sp.ghast_free,limit=1] run return run function sailing_physics:collision/floor/reuse
function sailing_physics:collision/floor/spawn
