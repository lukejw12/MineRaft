scoreboard players operation #temp counter_id = @s counter_id

execute as @e[type=item_display,tag=counter_facade] if score @s counter_id = #temp counter_id run kill @s
execute as @e[type=interaction,tag=counter_interact] if score @s counter_id = #temp counter_id run kill @s

summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{foundation_counter_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["foundation_counter"]},"minecraft:item_model":"minecraft:foundation_counter_item","minecraft:item_name":{"translate":"item.mineraft.foundation_counter","fallback":"Foundation Counter"},"minecraft:rarity":"uncommon"}}}

playsound minecraft:block.wood.break block @a[distance=..10] ~ ~ ~ 1 1 1

kill @s