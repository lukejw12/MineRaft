scoreboard players operation #current_shark_id mr.data = @s mr.shark_id


execute if entity @a[distance=..25] as @a[distance=..25,limit=1,sort=nearest] at @s if block ~ ~ ~ water unless entity @s[tag=mr.shark_target] unless entity @s[tag=mr.shark_immunity] run tag @s add mr.new_target

execute as @a[tag=mr.new_target] run scoreboard players operation @s mr.shark_id = #current_shark_id mr.data
execute as @a[tag=mr.new_target] run tag @s add mr.shark_target
execute as @a[tag=mr.new_target] run tag @s remove mr.new_target

execute as @a[tag=mr.shark_target] if score @s mr.shark_id = #current_shark_id mr.data run tag @s add mr.found_target

execute if entity @a[tag=mr.found_target] run scoreboard players set @s mr.shark_mode 1
execute if entity @a[tag=mr.found_target] run scoreboard players operation #shark_id mr.data = @s mr.shark_id
execute if entity @a[tag=mr.found_target] as @e[type=item_display,tag=aj.mineraft.root] if score @s mr.shark_id = #shark_id mr.data run function animated_java:mineraft/animations/steve_attack_charge/play

execute unless entity @a[tag=mr.found_target] run scoreboard players set @s mr.shark_target_y 58
execute unless entity @a[tag=mr.found_target] run function mineraft:shark/mode/return_to_idle

tag @a remove mr.found_target


