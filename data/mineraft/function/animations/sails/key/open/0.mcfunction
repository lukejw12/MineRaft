execute if entity @s[tag=Sail] run return run \
data merge entity @s {transformation:[1f,0f,0f,0f,0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f], interpolation_duration:10, start_interpolation:0, \
     item:{components:{"item_model":"raft_structures:sail"}}}
execute if entity @s[tag=Sail_yard] run return run \
data merge entity @s {transformation:[1f,0f,0f,0f,0f,1f,0f,2f,0f,0f,1f,0f,0f,0f,0f,1f], interpolation_duration:10, start_interpolation:0}
execute at @s run playsound raft_structures:sail.open block @a ~ ~ ~ 2 .9
