execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot rotation set value [0f,1f,0f,0f]
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot offset_x1 set value 0
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot offset_z1 set value 1
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot offset_x2 set value -1
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot offset_z2 set value 1
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot offset_x3 set value -1
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot offset_z3 set value 0
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot interaction_x set value 0
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:crop_plot interaction_z set value 1

execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot rotation set value [0f,0.707f,0f,0.707f]
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot offset_x1 set value -1
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot offset_z1 set value 0
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot offset_x2 set value -1
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot offset_z2 set value -1
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot offset_x3 set value 0
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot offset_z3 set value -1
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot interaction_x set value 0
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:crop_plot interaction_z set value 0

execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot rotation set value [0f,0f,0f,1f]
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot offset_x1 set value 0
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot offset_z1 set value -1
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot offset_x2 set value 1
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot offset_z2 set value -1
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot offset_x3 set value 1
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot offset_z3 set value 0
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot interaction_x set value 1
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:crop_plot interaction_z set value 0

execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot rotation set value [0f,0f,0f,1f]
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot offset_x1 set value 0
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot offset_z1 set value -1
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot offset_x2 set value 1
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot offset_z2 set value -1
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot offset_x3 set value 1
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot offset_z3 set value 0
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot interaction_x set value 1
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:crop_plot interaction_z set value 0

execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot rotation set value [0f,-0.707f,0f,0.707f]
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot offset_x1 set value 1
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot offset_z1 set value 0
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot offset_x2 set value 1
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot offset_z2 set value 1
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot offset_x3 set value 0
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot offset_z3 set value 1
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot interaction_x set value 1
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:crop_plot interaction_z set value 1

