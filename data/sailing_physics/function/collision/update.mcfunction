tag @e[tag=sp.floor_ghast] add sp.ghast_free
tag @e[tag=sp.plat_ghast] add sp.plat_free
tag @e[tag=sp.support_coll] add sp.sup_free
execute as @a at @s run function sailing_physics:collision/per_player
tp @e[tag=sp.ghast_free] ~ -1000 ~
kill @e[tag=sp.ghast_free]
tp @e[tag=sp.plat_free] ~ -1000 ~
kill @e[tag=sp.plat_free]
tp @e[tag=sp.sup_free] ~ -1000 ~
execute as @e[tag=sp.sup_free] on passengers run kill @s
kill @e[tag=sp.sup_free]
