execute if entity @e[type=interaction,tag=receiver_interact,distance=..1] run function mineraft:ui/receiver/hit_receiver

execute unless score #ui_hit receiver matches 1 if score #ui_distance receiver matches ..25 positioned ^ ^ ^0.2 run function mineraft:ui/receiver/raycast

scoreboard players add #ui_distance receiver 1