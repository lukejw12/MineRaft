
playsound minecraft:block.wood.break block @a[distance=..10] ~ ~ ~ 1 1 1

summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{trophy_board_item:true},"minecraft:entity_data":{id:"minecraft:marker",Tags:["trophy_board"]},"minecraft:item_model":"minecraft:trophy_board_empty","minecraft:item_name":{"translate":"item.mineraft.trophy_board","fallback":"Trophy Board"},"minecraft:rarity":"uncommon"}}}

execute if score @s trophy_has_shark matches 1 run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:prismarine_shard",count:1}}

kill @e[type=item_display,tag=trophy_board_facade,limit=1,sort=nearest,distance=..2]
kill @e[type=interaction,tag=trophy_board_interact,limit=1,sort=nearest,distance=..2]
kill @s