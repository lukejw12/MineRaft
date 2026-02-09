
data remove storage animated_java:temp args
$execute store result storage animated_java:temp args.frame int 1 run scoreboard players set @s aj.steve_swim_idle.frame $(frame)
execute at @s run function animated_java:mineraft/animations/steve_swim_idle/zzz/set_frame with storage animated_java:temp args