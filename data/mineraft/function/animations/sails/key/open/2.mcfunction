execute if entity @s[tag=Sail] run return run \
data merge entity @s {transformation:[1f,0f,0f,0f,0f,.97058824f,0f,2.038f,0f,0f,1f,0f,0f,0f,0f,1f], interpolation_duration:1, start_interpolation:0}
execute if entity @s[tag=Sail_yard] run return run \
data merge entity @s {transformation:[1f,0f,0f,0f,0f,1f,0f,2.09375f,0f,0f,1f,0f,0f,0f,0f,1f], interpolation_duration:1, start_interpolation:0}
execute at @s run playsound raft_structures:sail.bottom_hit block @a ~ ~ ~ 1 1
