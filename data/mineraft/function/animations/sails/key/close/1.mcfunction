execute if entity @s[tag=Sail] run return run \
data merge entity @s {interpolation_duration:3, start_interpolation:0}
execute if entity @s[tag=Sail_yard] run return run \
data merge entity @s {interpolation_duration:3, start_interpolation:0}
execute at @s run playsound raft_structures:sail.close block @a ~ ~ ~ 2 1
