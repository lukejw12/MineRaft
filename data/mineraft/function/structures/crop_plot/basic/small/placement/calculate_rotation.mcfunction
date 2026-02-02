execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot rotation set value [0f,1f,0f,0f]
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot block1_offset_x set value -1
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot block1_offset_z set value 0
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot crop1_offset_x set value 0.5
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot crop1_offset_z set value 0.5
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot crop2_offset_x set value 0.0
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot crop2_offset_z set value 0.5
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot crop3_offset_x set value -0.5
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot crop3_offset_z set value 0.5

execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot rotation set value [0f,0.707f,0f,0.707f]
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot block1_offset_x set value 0
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot block1_offset_z set value -1
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot crop1_offset_x set value 0.5
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot crop1_offset_z set value 0.5
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot crop2_offset_x set value 0.5
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot crop2_offset_z set value 0.0
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot crop3_offset_x set value 0.5
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot crop3_offset_z set value -0.5

execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot rotation set value [0f,0f,0f,1f]
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot block1_offset_x set value 1
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot block1_offset_z set value 0
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot crop1_offset_x set value 0.5
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot crop1_offset_z set value 0.5
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot crop2_offset_x set value 1.0
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot crop2_offset_z set value 0.5
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot crop3_offset_x set value 1.5
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot crop3_offset_z set value 0.5

execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot rotation set value [0f,0f,0f,1f]
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot block1_offset_x set value 1
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot block1_offset_z set value 0
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot crop1_offset_x set value 0.5
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot crop1_offset_z set value 0.5
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot crop2_offset_x set value 1.0
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot crop2_offset_z set value 0.5
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot crop3_offset_x set value 1.5
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot crop3_offset_z set value 0.5

execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot rotation set value [0f,-0.707f,0f,0.707f]
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot block1_offset_x set value 0
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot block1_offset_z set value 1
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot crop1_offset_x set value 0.5
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot crop1_offset_z set value 0.5
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot crop2_offset_x set value 0.5
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot crop2_offset_z set value 1.0
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot crop3_offset_x set value 0.5
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot crop3_offset_z set value 1.5

