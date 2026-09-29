scoreboard players set #dr.sx mr.data 0
scoreboard players set #dr.sz mr.data 0
execute as @e[type=item_display,tag=mr.t.sail,tag=sp.raft_entity] if data entity @s {data:{sail:"open"}} run function mineraft:sail/drift_sail
scoreboard players operation #dr.n mr.data = #drift.max mr.data
scoreboard players operation #dr.n mr.data *= #-1 mr.const
execute if score #dr.sx mr.data > #drift.max mr.data run scoreboard players operation #dr.sx mr.data = #drift.max mr.data
execute if score #dr.sx mr.data < #dr.n mr.data run scoreboard players operation #dr.sx mr.data = #dr.n mr.data
execute if score #dr.sz mr.data > #drift.max mr.data run scoreboard players operation #dr.sz mr.data = #drift.max mr.data
execute if score #dr.sz mr.data < #dr.n mr.data run scoreboard players operation #dr.sz mr.data = #dr.n mr.data
scoreboard players operation #dr.x mr.data = #drift.current_x mr.data
scoreboard players operation #dr.x mr.data += #dr.sx mr.data
scoreboard players operation #dr.z mr.data = #drift.current_z mr.data
scoreboard players operation #dr.z mr.data += #dr.sz mr.data
scoreboard players operation #sp.vx sp.data += #dr.x mr.data
scoreboard players operation #sp.vz sp.data += #dr.z mr.data
