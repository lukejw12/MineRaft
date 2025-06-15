scoreboard players operation #temp recycler_id = @s recycler_id

execute as @e[type=item_display,tag=recycler_facade] if score @s recycler_id = #temp recycler_id run kill @s
execute as @e[type=interaction,tag=recycler_interact] if score @s recycler_id = #temp recycler_id run kill @s
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{recycler_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["recycler"]},"minecraft:item_model":"minecraft:recycler_item","minecraft:item_name":{"translate":"item.mineraft.recycler","fallback":"Recycler"},"minecraft:rarity":"uncommon"}}}


kill @s