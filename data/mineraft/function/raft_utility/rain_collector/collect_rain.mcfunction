
execute unless block ~ ~ ~ #rain_collector_base run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{rain_collector_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["rain_collector"]},"minecraft:item_model":"minecraft:rain_collector","minecraft:item_name":{"translate":"item.mineraft.rain_collector","fallback":"Rain Collector"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ #rain_collector_base run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=rain_collector_facade]
execute unless block ~ ~ ~ #rain_collector_base run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #rain_collector_base run kill @s

execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{rain_collector_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["rain_collector"]},"minecraft:item_model":"minecraft:rain_collector","minecraft:item_name":{"translate":"item.mineraft.rain_collector","fallback":"Rain Collector"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=rain_collector_facade]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run kill @s


scoreboard players add @s rain_collector_timer 1
execute if entity @s[scores={rain_collector_timer=200..}] if block ~ ~ ~ water_cauldron[level=3] run particle falling_water ~ ~1.3 ~ 0.2 0.2 0.2 0 4 force
execute if entity @s[scores={rain_collector_timer=200..}] if block ~ ~ ~ water_cauldron[level=2] run setblock ~ ~ ~ water_cauldron[level=3]
execute if entity @s[scores={rain_collector_timer=200..}] if block ~ ~ ~ water_cauldron[level=1] run setblock ~ ~ ~ water_cauldron[level=2]
execute if entity @s[scores={rain_collector_timer=200..}] if block ~ ~ ~ cauldron run setblock ~ ~ ~ water_cauldron[level=1]
execute if entity @s[scores={rain_collector_timer=200..}] run scoreboard players set @s rain_collector_timer 0

execute as @e[type=minecraft:interaction,tag=water_collect] at @s unless block ~ ~ ~ #rain_collector_base run kill @s
execute as @e[type=minecraft:interaction,tag=water_collect] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click
execute as @e[type=minecraft:interaction,tag=water_collect] unless block ~ ~ ~ cauldron if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run give @s potion[item_name={"bold":false,"italic":false,"text":"Purified Water"},rarity="common",custom_data={pure_water:1b},custom_name={"color":"white","italic":false,"text":"Purified Water"},max_stack_size=8] 1
execute as @e[type=minecraft:interaction,tag=water_collect] unless block ~ ~ ~ cauldron if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run clear @s minecraft:glass_bottle 1
execute as @e[type=minecraft:interaction,tag=water_collect] unless block ~ ~ ~ cauldron if block ~ ~ ~ water_cauldron[level=1] if data entity @s interaction run setblock ~ ~ ~ cauldron
execute as @e[type=minecraft:interaction,tag=water_collect] unless block ~ ~ ~ cauldron if block ~ ~ ~ water_cauldron[level=2] if data entity @s interaction run setblock ~ ~ ~ water_cauldron[level=1]
execute as @e[type=minecraft:interaction,tag=water_collect] unless block ~ ~ ~ cauldron if block ~ ~ ~ water_cauldron[level=3] if data entity @s interaction run setblock ~ ~ ~ water_cauldron[level=2]
execute as @e[type=minecraft:interaction,tag=water_collect] if data entity @s interaction run data remove entity @s interaction

