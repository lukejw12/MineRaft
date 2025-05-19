fill ~1 ~ ~1 ~-1 ~ ~-1 air
summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_platform:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_platform"]},"minecraft:item_model":"minecraft:wooden_platform_it","minecraft:item_name":{"translate":"item.mineraft.wooden_platform","fallback":"Wooden Platform"},"minecraft:rarity":"uncommon"}}}
particle block_crumble{block_state:"minecraft:stripped_spruce_wood"} ~ ~ ~ 0.8 0.3 0.8 1 40 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5
kill @e[tag=wooden_platform_facade,distance=..1]
kill @s
return 0