
function animated_java:mineraft/animations/pause_all
scoreboard players set @s aj.steve_attack_charge.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:mineraft/animations/steve_attack_charge/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only