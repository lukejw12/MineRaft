effect give @e[tag=staircase_steps,type=shulker] invisibility infinite 1 true

execute unless block ~ ~-1 ~ #raft_materials run particle block_crumble{block_state:"minecraft:stripped_spruce_wood"} ~ ~ ~ 0.8 0.3 0.8 1 40 normal
execute unless block ~ ~-1 ~ #minecraft:raft_materials run playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

execute as @s[tag=facing_north] unless block ~ ~-1 ~ #minecraft:raft_materials run scoreboard players operation #temp staircase_id = @s staircase_id

execute as @s[tag=facing_north] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run tp @s ~100 ~1000 ~
execute as @s[tag=facing_north] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run kill @s
execute as @s[tag=facing_north] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_steps] if score @s staircase_id = #temp staircase_id run kill @s
execute as @s[tag=facing_north] unless block ~ ~-1 ~ #minecraft:raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_staircase:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_staircase"]},"minecraft:item_model":"minecraft:wooden_stairs","minecraft:item_name":{"translate":"item.mineraft.wooden_staircase","fallback":"Wooden Staircase"},"minecraft:rarity":"uncommon"}}}

execute as @s[tag=facing_north] unless block ~ ~-1 ~ #minecraft:raft_materials run setblock ~ ~2 ~-3 air
execute as @s[tag=facing_north] unless block ~ ~-1 ~ #minecraft:raft_materials run kill @s

execute as @s[tag=facing_south] unless block ~ ~-1 ~ #minecraft:raft_materials run scoreboard players operation #temp staircase_id = @s staircase_id

execute as @s[tag=facing_south] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run tp @s ~100 ~1000 ~
execute as @s[tag=facing_south] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run kill @s
execute as @s[tag=facing_south] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_steps] if score @s staircase_id = #temp staircase_id run kill @s

execute as @s[tag=facing_south] unless block ~ ~-1 ~ #minecraft:raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_staircase:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_staircase"]},"minecraft:item_model":"minecraft:wooden_stairs","minecraft:item_name":{"translate":"item.mineraft.wooden_staircase","fallback":"Wooden Staircase"},"minecraft:rarity":"uncommon"}}}

execute as @s[tag=facing_south] unless block ~ ~-1 ~ #minecraft:raft_materials run setblock ~ ~2 ~3 air
execute as @s[tag=facing_south] unless block ~ ~-1 ~ #minecraft:raft_materials run kill @s

execute as @s[tag=facing_east] unless block ~ ~-1 ~ #minecraft:raft_materials run scoreboard players operation #temp staircase_id = @s staircase_id

execute as @s[tag=facing_east] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run tp @s ~100 ~1000 ~
execute as @s[tag=facing_east] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run kill @s
execute as @s[tag=facing_east] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_steps] if score @s staircase_id = #temp staircase_id run kill @s

execute as @s[tag=facing_east] unless block ~ ~-1 ~ #minecraft:raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_staircase:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_staircase"]},"minecraft:item_model":"minecraft:wooden_stairs","minecraft:item_name":{"translate":"item.mineraft.wooden_staircase","fallback":"Wooden Staircase"},"minecraft:rarity":"uncommon"}}}

execute as @s[tag=facing_east] unless block ~ ~-1 ~ #minecraft:raft_materials run setblock ~3 ~2 ~ air
execute as @s[tag=facing_east] unless block ~ ~-1 ~ #minecraft:raft_materials run kill @s

execute as @s[tag=facing_west] unless block ~ ~-1 ~ #minecraft:raft_materials run scoreboard players operation #temp staircase_id = @s staircase_id

execute as @s[tag=facing_west] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run tp @s ~100 ~1000 ~
execute as @s[tag=facing_west] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_entity] if score @s staircase_id = #temp staircase_id run kill @s
execute as @s[tag=facing_west] unless block ~ ~-1 ~ #minecraft:raft_materials as @e[tag=staircase_steps] if score @s staircase_id = #temp staircase_id run kill @s

execute as @s[tag=facing_west] unless block ~ ~-1 ~ #minecraft:raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_staircase:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_staircase"]},"minecraft:item_model":"minecraft:wooden_stairs","minecraft:item_name":{"translate":"item.mineraft.wooden_staircase","fallback":"Wooden Staircase"},"minecraft:rarity":"uncommon"}}}

execute as @s[tag=facing_west] unless block ~ ~-1 ~ #minecraft:raft_materials run setblock ~-3 ~2 ~ air
execute as @s[tag=facing_west] unless block ~ ~-1 ~ #minecraft:raft_materials run kill @s


