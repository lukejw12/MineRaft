execute on target run clear @s minecraft:glass_bottle 1
execute on target run give @s potion[item_name={"bold":false,"italic":false,"text":"Purified Water"},rarity="uncommon",custom_data={pure_water:1b},custom_name={"color":"aqua","italic":false,"text":"Purified Water"},max_stack_size=8] 1
execute on target run scoreboard players add @s water_purified 1

execute at @s run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=..1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_empty"}}
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..1] run scoreboard players set @s purifier_timer 0
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..1] run tag @s remove processing
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..1] run tag @s remove ready

tag @s[tag=has_interaction,type=interaction] remove has_interaction
tag @s[tag=water_click,type=interaction] remove water_click
tag @s[tag=planks_click,type=interaction] remove planks_click
tag @s[tag=bottle_click,type=interaction] remove bottle_click
tag @e[tag=this_facade,type=item_display] remove this_facade
tag @s[tag=this_interact,type=interaction] remove this_interact
tag @s[tag=this_interact,type=interaction] remove held_planks