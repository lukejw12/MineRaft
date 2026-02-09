
scoreboard players set @s aj.steve_swim_idle.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:mineraft/animations/steve_swim_idle/zzz/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only