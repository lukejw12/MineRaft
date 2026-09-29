execute anchored eyes positioned ^ ^ ^ summon marker run function mineraft:place/sail/ray_from
execute anchored eyes positioned ^ ^ ^0.1 summon marker run function mineraft:place/sail/ray_to
scoreboard players operation #sr.dx mr.data -= #sr.x mr.data
scoreboard players operation #sr.dy mr.data -= #sr.y mr.data
scoreboard players operation #sr.dz mr.data -= #sr.z mr.data
scoreboard players operation #sr.x mr.data -= #sail.dx mr.data
scoreboard players operation #sr.z mr.data -= #sail.dz mr.data
scoreboard players set #sr.lx mr.data -2147483648
function mineraft:place/sail/ray_loop
