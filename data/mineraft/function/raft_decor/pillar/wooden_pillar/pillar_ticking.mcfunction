execute unless block ~ ~2 ~ end_rod run fill ~ ~ ~ ~ ~2 ~ air
execute unless block ~ ~2 ~ end_rod run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_support:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_support"]},"minecraft:item_model":"minecraft:wooden_pillar","minecraft:item_name":{"translate":"item.mineraft.wooden_pillar","fallback":"Wooden Pillar"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~2 ~ end_rod run particle block_crumble{block_state:"minecraft:stripped_spruce_wood"} ~ ~ ~ 0.8 0.3 0.8 1 40 normal
execute unless block ~ ~2 ~ end_rod run playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5
execute unless block ~ ~2 ~ end_rod positioned ~ ~2 ~ run kill @e[type=item,limit=1,sort=nearest,distance=..5,nbt={Item:{id:"minecraft:end_rod"}}]
execute unless block ~ ~2 ~ end_rod run kill @e[tag=wooden_support_facade,distance=..1]
execute unless block ~ ~2 ~ end_rod run kill @s

execute unless block ~ ~-1 ~ #minecraft:raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_support:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_support"]},"minecraft:item_model":"minecraft:wooden_pillar","minecraft:item_name":{"translate":"item.mineraft.wooden_pillar","fallback":"Wooden Pillar"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #minecraft:raft_materials run fill ~ ~ ~ ~ ~2 ~ air
execute unless block ~ ~-1 ~ #minecraft:raft_materials run particle block_crumble{block_state:"minecraft:stripped_spruce_wood"} ~ ~ ~ 0.8 0.3 0.8 1 40 normal
execute unless block ~ ~-1 ~ #minecraft:raft_materials run playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5
execute unless block ~ ~-1 ~ #minecraft:raft_materials run kill @e[tag=wooden_support_facade,distance=..1]
execute unless block ~ ~-1 ~ #minecraft:raft_materials run kill @s