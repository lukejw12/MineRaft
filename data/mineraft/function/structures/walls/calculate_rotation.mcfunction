execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:walls side set value "south"
execute if score #rotation mr.data matches -45..45 run data modify storage mineraft:walls rotation set value [0f,0f,0f,1f]

execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:walls side set value "west"
execute if score #rotation mr.data matches 45..135 run data modify storage mineraft:walls rotation set value [0f,-0.707f,0f,0.707f]

execute if score #rotation mr.data matches 135.. run data modify storage mineraft:walls side set value "north"
execute if score #rotation mr.data matches 135.. run data modify storage mineraft:walls rotation set value [0f,1f,0f,0f]
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:walls side set value "north"
execute if score #rotation mr.data matches ..-135 run data modify storage mineraft:walls rotation set value [0f,1f,0f,0f]

execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:walls side set value "east"
execute if score #rotation mr.data matches -135..-45 run data modify storage mineraft:walls rotation set value [0f,0.707f,0f,0.707f]