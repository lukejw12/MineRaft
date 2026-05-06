execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:purifier fuel_translation set value [-0.05f,0f,-0.08f]
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:purifier fuel_translation set value [0.08f,0f,-0.05f]
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:purifier fuel_translation set value [0.05f,0f,0.08f]
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:purifier fuel_translation set value [0.05f,0f,0.08f]
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:purifier fuel_translation set value [-0.08f,0f,0.05f]

execute if score #rotation mr.data matches -44..44 run data modify storage mineraft:purifier fire_x set value "0.0"
execute if score #rotation mr.data matches -44..44 run data modify storage mineraft:purifier fire_z set value "-0.8"

execute if score #rotation mr.data matches 45..134 run data modify storage mineraft:purifier fire_x set value "0.3"
execute if score #rotation mr.data matches 45..134 run data modify storage mineraft:purifier fire_z set value "-0.7"

execute if score #rotation mr.data matches 135.. run data modify storage mineraft:purifier fire_x set value "0.18"
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:purifier fire_z set value "-0.55"

execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:purifier fire_x set value "0.0"
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:purifier fire_z set value "0.0"

execute if score #rotation mr.data matches -134..-45 run data modify storage mineraft:purifier fire_x set value "0.0"
execute if score #rotation mr.data matches -134..-45 run data modify storage mineraft:purifier fire_z set value "-0.5"

execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:purifier rotation set value [0f,1f,0f,0f]
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:purifier block1_offset_x set value -1
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:purifier block1_offset_z set value 0
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:purifier translation set value [-0.2f,0.01f,0f]

execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:purifier rotation set value [0f,0.707f,0f,0.707f]
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:purifier block1_offset_x set value 0
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:purifier block1_offset_z set value -1
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:purifier translation set value [0f,0.01f,-0.2f]

execute if score #rotation mr.data matches 135.. run data modify storage mineraft:purifier rotation set value [0f,0f,0f,1f]
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:purifier block1_offset_x set value 1
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:purifier block1_offset_z set value 0
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:purifier translation set value [0.2f,0.01f,0f]

execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:purifier rotation set value [0f,0f,0f,1f]
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:purifier block1_offset_x set value 1
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:purifier block1_offset_z set value 0
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:purifier translation set value [0.2f,0.01f,0f]

execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:purifier rotation set value [0f,-0.707f,0f,0.707f]
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:purifier block1_offset_x set value 0
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:purifier block1_offset_z set value 1
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:purifier translation set value [0f,0.01f,0.2f]
