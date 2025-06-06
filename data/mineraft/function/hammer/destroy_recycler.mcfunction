# Get the recycler ID for proper cleanup
scoreboard players operation #temp recycler_id = @e[type=marker,tag=recycler_active,sort=nearest,limit=1,distance=..1] recycler_id

# Kill associated entities with matching ID
execute as @e[type=item_display,tag=recycler_facade] if score @s recycler_id = #temp recycler_id run kill @s
execute as @e[type=interaction,tag=recycler_interact] if score @s recycler_id = #temp recycler_id run kill @s

# Drop recycler item
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{recycler_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["recycler"]},"minecraft:item_model":"minecraft:recycler","minecraft:item_name":{"translate":"item.mineraft.recycler","fallback":"Recycler"},"minecraft:rarity":"uncommon"}}}

# Drop battery if present (and not dead)
execute as @e[type=marker,tag=recycler_active,sort=nearest,limit=1,distance=..1] if score @s has_battery matches 1 if score @s battery_uses matches 1.. run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:orange_dye",count:1,components:{"minecraft:item_model":"minecraft:battery","minecraft:item_name":{"translate":"item.mineraft.battery","fallback":"Battery"}}}}

# Play destruction sound
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

# Clear block and kill marker
setblock ~ ~ ~ air
kill @e[type=marker,tag=recycler_active,sort=nearest,limit=1,distance=..1]