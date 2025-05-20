scoreboard players operation #temp solid_wall_id = @s solid_wall_id
fill ~-1 ~ ~ ~1 ~2 ~ air
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{solid_wooden_wall:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["solid_wooden_wall"]},"minecraft:item_model":"minecraft:solid_wooden_wall","minecraft:item_name":{"translate":"item.mineraft.solid_wooden_wall","fallback":"Solid Wooden Wall"},"minecraft:rarity":"uncommon"}}}
particle block_crumble{block_state:"minecraft:oak_planks"} ~ ~1 ~ 1 1 0 1 40 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5
execute as @e[tag=solid_wall_facade] if score @s solid_wall_id = #temp solid_wall_id run kill @s
scoreboard players set #destroyed hammer_helper 1
kill @s