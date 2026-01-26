data modify storage mineraft:purifier block1_offset_x set from entity @s data.block1_offset_x
data modify storage mineraft:purifier block1_offset_z set from entity @s data.block1_offset_z

execute if data storage mineraft:purifier {block1_offset_x:1} run data modify storage mineraft:purifier particle_x set value 0.8
execute if data storage mineraft:purifier {block1_offset_x:-1} run data modify storage mineraft:purifier particle_x set value -0.8
execute if data storage mineraft:purifier {block1_offset_x:0} run data modify storage mineraft:purifier particle_x set value 0

execute if data storage mineraft:purifier {block1_offset_z:1} run data modify storage mineraft:purifier particle_z set value 0.5
execute if data storage mineraft:purifier {block1_offset_z:-1} run data modify storage mineraft:purifier particle_z set value -0.7
execute if data storage mineraft:purifier {block1_offset_z:0} run data modify storage mineraft:purifier particle_z set value 0

function mineraft:structures/water_purifier/utils/particles/spawn with storage mineraft:purifier