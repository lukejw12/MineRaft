
scoreboard players add @s shark.stuck_timer 1

execute if score @s shark.stuck_timer matches 80.. run function mineraft:shark/teleport_to_water

execute if score @s shark.stuck_timer matches 1..19 run data modify entity @s Motion[1] set value -0.6d