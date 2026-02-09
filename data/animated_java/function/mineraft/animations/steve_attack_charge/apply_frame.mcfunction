
data remove storage animated_java:temp args
$execute store result storage animated_java:temp args.frame int 1 run scoreboard players set @s aj.steve_attack_charge.frame $(frame)
execute at @s run function animated_java:mineraft/animations/steve_attack_charge/zzz/apply_frame with storage animated_java:temp args