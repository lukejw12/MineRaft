execute as @e[tag=shark] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 1 2
schedule clear mineraft:shark/attacking_raft_sound
execute as @e[tag=shark] at @s run particle minecraft:crit ^ ^1 ^1 0.1 0.1 0.1 0 10 force