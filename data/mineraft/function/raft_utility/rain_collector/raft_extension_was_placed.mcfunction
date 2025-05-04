execute if block ~ ~ ~ end_rod run tp @s ~ ~1 ~


execute at @s if block ~ ~-1 ~ #raft_materials if blocks ~1 ~1 ~1 ~-1 ~ ~-1 ~ 300 ~ masked run tag @s add valid
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #raft_materials run summon marker ~ ~ ~ {Tags:["rain_collector_active"]}
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #raft_materials run summon interaction ~ ~ ~ {width:1.06f,height:1.1f,response:1b,Tags:["water_collect"]}
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #raft_materials run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #raft_materials run summon item_display ~ ~0.51 ~ {item_display:"ground",Tags:["rain_collector_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:rain_collector_st","minecraft:enchantment_glint_override":false}}}
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ cauldron
execute at @s if entity @s[tag=valid] if block ~ ~-1 ~ #raft_materials run kill @s
execute at @s if block ~ ~-1 ~ #raft_materials if entity @s[tag=valid] run return 0

execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{rain_collector_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["rain_collector"]},"minecraft:item_model":"minecraft:rain_collector","minecraft:item_name":{"translate":"item.mineraft.rain_collector","fallback":"Rain Collector"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #raft_materials run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #raft_materials run kill @s
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #raft_materials run return 0

execute unless entity @s[tag=valid] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{rain_collector_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["rain_collector"]},"minecraft:item_model":"minecraft:rain_collector","minecraft:item_name":{"translate":"item.mineraft.rain_collector","fallback":"Rain Collector"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] run kill @s
execute unless entity @s[tag=valid] run return 0
