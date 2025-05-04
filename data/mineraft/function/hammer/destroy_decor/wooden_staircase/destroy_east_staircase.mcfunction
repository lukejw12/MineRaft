scoreboard players operation #temp staircase_id = @s staircase_id

execute as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run tp @s ~100 ~1000 ~
execute as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run kill @s
execute as @e[tag=staircase_steps] if score @s staircase_id = #temp staircase_id run kill @s

summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_staircase:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_staircase"]},"minecraft:item_model":"minecraft:wooden_stairs","minecraft:item_name":{"translate":"item.mineraft.wooden_staircase","fallback":"Wooden Staircase"},"minecraft:rarity":"uncommon"}}}
kill @s

scoreboard players set #destroyed hammer_helper 1