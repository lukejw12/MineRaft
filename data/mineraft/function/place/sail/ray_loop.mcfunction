scoreboard players operation #sr.x mr.data += #sr.dx mr.data
scoreboard players operation #sr.y mr.data += #sr.dy mr.data
scoreboard players operation #sr.z mr.data += #sr.dz mr.data
scoreboard players operation #sr.bx mr.data = #sr.x mr.data
scoreboard players operation #sr.bx mr.data /= #1000 mr.const
scoreboard players operation #sr.by mr.data = #sr.y mr.data
scoreboard players operation #sr.by mr.data /= #1000 mr.const
scoreboard players operation #sr.bz mr.data = #sr.z mr.data
scoreboard players operation #sr.bz mr.data /= #1000 mr.const
scoreboard players set #sr.new mr.data 0
execute unless score #sr.bx mr.data = #sr.lx mr.data run scoreboard players set #sr.new mr.data 1
execute unless score #sr.by mr.data = #sr.ly mr.data run scoreboard players set #sr.new mr.data 1
execute unless score #sr.bz mr.data = #sr.lz mr.data run scoreboard players set #sr.new mr.data 1
execute if score #sr.new mr.data matches 1 run function mineraft:place/sail/ray_block
execute if score #ray.kind mr.data matches 1.. run return run function mineraft:place/sail/ray_hit
scoreboard players remove #ray.n mr.data 1
execute if score #ray.n mr.data matches 1.. run function mineraft:place/sail/ray_loop
