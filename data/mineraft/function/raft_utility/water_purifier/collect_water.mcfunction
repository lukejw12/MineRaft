execute on target run clear @s minecraft:glass_bottle 1
execute on target run give @s potion[item_name={"bold":false,"italic":false,"text":"Purified Water"},rarity="uncommon",custom_data={pure_water:1b},custom_name={"color":"aqua","italic":false,"text":"Purified Water"},max_stack_size=8] 1

execute at @s run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=..1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_empty"}}
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..1] run scoreboard players set @s purifier_timer 0
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..1] run tag @s remove processing
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..1] run tag @s remove ready

tag @e[tag=has_interaction,type=interaction,distance=..1] remove has_interaction
tag @e[tag=water_click,type=interaction,distance=..1] remove water_click
tag @e[tag=planks_click,type=interaction,distance=..1] remove planks_click
tag @e[tag=bottle_click,type=interaction,distance=..1] remove bottle_click
tag @e[tag=this_facade,type=item_display,distance=..1] remove this_facade
tag @e[tag=this_interact,type=interaction,distance=..1] remove this_interact