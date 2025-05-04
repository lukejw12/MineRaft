execute unless block ~ ~-1 ~ #valid_center_blocks run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=smeltery_facade]
execute unless block ~ ~-1 ~ #valid_center_blocks run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #valid_center_blocks run kill @s
execute unless block ~ ~ ~ smoker run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{smeltery_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["smeltery"]},"minecraft:item_model":"minecraft:smeltery","minecraft:item_name":{"translate":"item.mineraft.smeltery","fallback":"Smeltery"}
,"minecraft:rarity":"rare"}}}
execute unless block ~ ~ ~ smoker run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=smeltery_facade]
execute unless block ~ ~ ~ smoker run setblock ~ ~ ~ air
execute unless block ~ ~ ~ smoker run kill @s
data merge block ~ ~ ~ {CustomName:'Smeltery'}