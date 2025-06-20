scoreboard players operation #temp receiver_id = @s receiver_id

execute as @a if score @s receiver_linked = #temp receiver_id run scoreboard players reset @s radar_target
execute as @a if score @s receiver_linked = #temp receiver_id run scoreboard players reset @s receiver_linked

execute as @e[type=item_display,tag=receiver_facade] if score @s receiver_id = #temp receiver_id run kill @s
execute as @e[type=interaction,tag=receiver_interact] if score @s receiver_id = #temp receiver_id run kill @s

summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{receiver_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["receiver"]},"minecraft:item_model":"minecraft:receiver_item","minecraft:item_name":{"translate":"item.mineraft.receiver","fallback":"Receiver"},"minecraft:rarity":"uncommon"}}}

playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

execute as @s[tag=facing_north] at @s run fill ~-1 ~ ~ ~1 ~1 ~ air
execute as @s[tag=facing_south] at @s run fill ~ ~ ~-1 ~ ~1 ~1 air
execute as @s[tag=facing_west] at @s run fill ~ ~ ~-1 ~ ~1 ~1 air
execute as @s[tag=facing_east] at @s run fill ~-1 ~ ~ ~1 ~1 ~ air

kill @s