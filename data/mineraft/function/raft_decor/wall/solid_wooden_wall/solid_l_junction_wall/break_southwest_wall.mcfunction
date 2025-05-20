scoreboard players operation #temp l_junction_wall_id = @s l_junction_wall_id
execute at @s run fill ~ ~ ~ ~-2 ~2 ~ air replace blue_stained_glass
execute at @s run fill ~ ~ ~ ~ ~2 ~2 air replace blue_stained_glass
execute as @e[type=item_display,tag=l_junction_wall_facade,tag=facing_southwest] if score @s l_junction_wall_id = #temp l_junction_wall_id run kill @s
execute at @s run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{solid_l_junction_wall:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["solid_l_junction_wall"]},"minecraft:item_model":"minecraft:solid_l_junction_wall_item","minecraft:item_name":{"translate":"item.mineraft.solid_l_junction_wall","fallback":"Solid L Junction Wall"},"minecraft:rarity":"uncommon"}}}
kill @s