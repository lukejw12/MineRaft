
execute if score @s aj.steve_swim_idle.frame matches 41.. run scoreboard players set @s aj.steve_swim_idle.frame 1
data remove storage animated_java:temp args
execute store result storage animated_java:temp args.frame int 1 run scoreboard players get @s aj.steve_swim_idle.frame
execute at @s run function animated_java:mineraft/animations/steve_swim_idle/zzz/apply_frame with storage animated_java:temp args
scoreboard players add @s aj.steve_swim_idle.frame 1