scoreboard players operation #shark_id mr.data = @s mr.shark_id
execute as @e[type=item_display,tag=aj.mineraft.root] if score @s mr.shark_id = #shark_id mr.data run function animated_java:mineraft/animations/steve_swim_idle/play
say prowl