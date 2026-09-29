$loot spawn ~$(spawn_x) 62 ~$(spawn_z) loot mineraft:flotsam
$execute positioned ~$(spawn_x) 62 ~$(spawn_z) run tag @e[type=item,tag=!mr.flotsam,distance=..1,limit=1,sort=nearest] add mr.flotsam