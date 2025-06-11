scoreboard players operation #temp receiver_id = @e[type=marker,tag=receiver_active,sort=nearest,limit=1,distance=..1] receiver_id

execute as @e[type=item_display,tag=receiver_facade] if score @s receiver_id = #temp receiver_id run kill @s
execute as @e[type=interaction,tag=receiver_interact] if score @s receiver_id = #temp receiver_id run kill @s

summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{receiver_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["receiver"]},"minecraft:item_model":"minecraft:receiver_item","minecraft:item_name":{"translate":"item.mineraft.receiver","fallback":"Receiver"},"minecraft:rarity":"uncommon"}}}

playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

execute as @e[type=marker,tag=receiver_active,sort=nearest,limit=1,distance=..1,tag=facing_north] run fill ~ ~ ~-1 ~ ~1 ~1 air
execute as @e[type=marker,tag=receiver_active,sort=nearest,limit=1,distance=..1,tag=facing_south] run fill ~ ~ ~-1 ~ ~1 ~1 air
execute as @e[type=marker,tag=receiver_active,sort=nearest,limit=1,distance=..1,tag=facing_west] run fill ~-1 ~ ~ ~1 ~1 ~ air
execute as @e[type=marker,tag=receiver_active,sort=nearest,limit=1,distance=..1,tag=facing_east] run fill ~-1 ~ ~ ~1 ~1 ~ air

kill @e[type=marker,tag=receiver_active,sort=nearest,limit=1,distance=..1]