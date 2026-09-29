execute if entity @s[tag=mr.shark_immunity] run return fail
tag @s add mr.shark_target
scoreboard players operation @s mr.shark_id = @e[type=armor_stand,tag=mr.shark,limit=1,sort=nearest] mr.shark_id

scoreboard players set @e[type=armor_stand,tag=mr.shark,limit=1,sort=nearest] mr.shark_mode 1

scoreboard players operation #shark_id mr.data = @e[type=armor_stand,tag=mr.shark,limit=1,sort=nearest] mr.shark_id
execute as @e[type=item_display,tag=aj.mineraft.root] if score @s mr.shark_id = #shark_id mr.data run function animated_java:mineraft/animations/steve_attack_charge/play