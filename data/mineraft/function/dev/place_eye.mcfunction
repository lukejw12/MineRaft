data remove storage mineraft:tmp pl
$function mineraft:place/load_def {type:"$(type)",variant:"$(variant)"}
$scoreboard players set #pl.rot mr.data $(rot)
scoreboard players set #ray.kind mr.data 0
scoreboard players set #ray.n mr.data 50
scoreboard players set #pl.has_target mr.data 0
scoreboard players set #pl.valid mr.data 0
execute unless score #sp.sailing sp.data matches 1 anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:place/ray/step
execute if score #sp.sailing sp.data matches 1 run function mineraft:place/sail/ray
execute if score #ray.kind mr.data matches 1.. run function mineraft:place/anchor/dispatch with storage mineraft:tmp pl.def
execute if score #pl.has_target mr.data matches 1 if score #pl.valid mr.data matches 1 run function mineraft:structure/spawn/start
