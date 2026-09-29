data remove storage mineraft:tmp pl
$function mineraft:place/load_def {type:"$(type)",variant:"$(variant)"}
$scoreboard players set #pl.rot mr.data $(rot)
$scoreboard players set #ray.bx mr.data $(x)
$scoreboard players set #ray.by mr.data $(y)
$scoreboard players set #ray.bz mr.data $(z)
$scoreboard players set #ray.px mr.data $(px)
$scoreboard players set #ray.pz mr.data $(pz)
$scoreboard players set #ray.kind mr.data $(kind)
scoreboard players set #pl.has_target mr.data 0
scoreboard players set #pl.valid mr.data 0
function mineraft:place/anchor/dispatch with storage mineraft:tmp pl.def
execute if score #pl.has_target mr.data matches 1 if score #pl.valid mr.data matches 1 run function mineraft:structure/spawn/start
$tellraw @a [{"text":"place $(type) -> target "},{"score":{"name":"#pl.has_target","objective":"mr.data"}},{"text":" valid "},{"score":{"name":"#pl.valid","objective":"mr.data"}},{"text":" anchor "},{"score":{"name":"#pl.ax","objective":"mr.data"}},{"text":" "},{"score":{"name":"#pl.ay","objective":"mr.data"}},{"text":" "},{"score":{"name":"#pl.az","objective":"mr.data"}}]
