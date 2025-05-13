
scoreboard players set #amt resource_delay 0


scoreboard objectives add temp dummy


scoreboard players set #count temp 0


kill @e[type=marker,tag=resource_spawn]


$scoreboard players set #target temp $(random)


function mineraft:spawn_resources/spawn_marker_loop