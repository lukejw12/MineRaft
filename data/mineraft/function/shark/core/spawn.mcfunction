summon armor_stand ~ ~ ~ {Tags:["mr.shark","mr.new_shark"],Invisible:1b,Marker:0b,Small:0b,NoBasePlate:1b}

execute positioned ~ ~ ~ rotated ~ 0 run function animated_java:mineraft/summon {args: {animation: 'steve_swim_idle'}}
execute as @e[type=item_display,tag=aj.mineraft.root,tag=mr.shark-display.new,limit=1] store result score @s mr.shark_id run scoreboard players add #global_shark mr.shark_id 1

execute as @e[type=armor_stand,tag=mr.new_shark,limit=1] run function mineraft:shark/core/spawn_init
tag @e[type=item_display,tag=mr.shark-display.new] remove mr.shark-display.new