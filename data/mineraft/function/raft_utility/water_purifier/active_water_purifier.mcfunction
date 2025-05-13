execute unless block ~ ~ ~ barrier run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade]
execute unless block ~ ~ ~ barrier run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_interact]
execute unless block ~ ~ ~ barrier run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{water_purifier_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["water_purifier"]},"minecraft:item_model":"minecraft:water_purifier","minecraft:item_name":{"translate":"item.minecraft.water_purifier","fallback":"Water Purifier"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~ ~ barrier run kill @s[type=marker,tag=water_purifier_active]

execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade]
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_interact]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{water_purifier_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["water_purifier"]},"minecraft:item_model":"minecraft:water_purifier","minecraft:item_name":{"translate":"item.minecraft.water_purifier","fallback":"Water Purifier"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s[type=marker,tag=water_purifier_active]

tag @e[type=item_display,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_facade] add this_facade
tag @e[type=interaction,distance=..0.5,sort=nearest,limit=1,tag=water_purifier_interact] add this_interact

execute as @e[tag=this_facade,type=item_display,distance=0..] run function mineraft:raft_utility/water_purifier/check_display
execute as @e[tag=this_interact,type=interaction,distance=0..] run function mineraft:raft_utility/water_purifier/purify_water

execute if entity @s[tag=processing,tag=!ready] run scoreboard players add @s purifier_timer 1
execute if entity @s[tag=processing,scores={purifier_timer=801..}] run scoreboard players set @s purifier_timer 800

execute if entity @s[tag=processing,scores={purifier_timer=800}] run item modify entity @e[type=item_display,tag=this_facade,limit=1,distance=0..] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:water_purifier_purified"}}
execute if entity @s[tag=processing,scores={purifier_timer=800}] run tag @s add ready

execute if entity @s[tag=processing,tag=!ready] at @s run particle minecraft:flame ~ ~0.4 ~ 0 0 0 0 1
tag @e[tag=this_facade,type=item_display,distance=0..] remove this_facade
tag @e[tag=this_interact,type=interaction,distance=0..] remove this_interact