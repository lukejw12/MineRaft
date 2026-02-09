
function animated_java:mineraft/animations/pause_all
tag @s add aj.mineraft.animation.steve_swim_idle.playing
scoreboard players set @s aj.steve_swim_idle.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:mineraft/animations/steve_swim_idle/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only