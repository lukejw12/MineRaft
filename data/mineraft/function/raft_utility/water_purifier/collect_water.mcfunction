execute on target run clear @s minecraft:glass_bottle 1
execute on target run give @s potion[item_name={"bold":false,"italic":false,"text":"Purified Water"},rarity="uncommon",custom_data={pure_water:1b},custom_name={"color":"aqua","italic":false,"text":"Purified Water"},max_stack_size=8] 1
execute at @s run item modify entity @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_empty"}}
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..0.5] run scoreboard players set @s purifier_timer 0
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..0.5] run tag @s remove processing
execute at @s as @e[tag=water_purifier_active,type=marker,distance=..0.5] run tag @s remove ready
data remove entity @s interaction