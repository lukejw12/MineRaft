
tag @s remove valid_north
tag @s remove valid_south
tag @s remove valid_east
tag @s remove valid_west

scoreboard players set #board_exists trophy_board 0

execute if entity @p[y_rotation=135..225] unless block ~ ~ ~-1 #minecraft:raycast_blocks if block ~ ~ ~ #minecraft:raycast_blocks run tag @s add check_north
execute if entity @s[tag=check_north] at @s if entity @e[tag=trophy_board_active,distance=..0.5] run scoreboard players set #board_exists trophy_board 1
execute if entity @s[tag=check_north] if score #board_exists trophy_board matches 0 run tag @s add valid_north

execute if entity @p[y_rotation=225..315] unless block ~1 ~ ~ #minecraft:raycast_blocks if block ~ ~ ~ #minecraft:raycast_blocks run tag @s add check_east
execute if entity @p[y_rotation=-135..-45] unless block ~1 ~ ~ #minecraft:raycast_blocks if block ~ ~ ~ #minecraft:raycast_blocks run tag @s add check_east
execute if entity @s[tag=check_east] at @s if entity @e[tag=trophy_board_active,distance=..0.5] run scoreboard players set #board_exists trophy_board 1
execute if entity @s[tag=check_east] if score #board_exists trophy_board matches 0 run tag @s add valid_east

execute if entity @p[y_rotation=-45..45] unless block ~ ~ ~1 #minecraft:raycast_blocks if block ~ ~ ~ #minecraft:raycast_blocks run tag @s add check_south
execute if entity @s[tag=check_south] at @s if entity @e[tag=trophy_board_active,distance=..0.5] run scoreboard players set #board_exists trophy_board 1
execute if entity @s[tag=check_south] if score #board_exists trophy_board matches 0 run tag @s add valid_south

execute if entity @p[y_rotation=45..135] unless block ~-1 ~ ~ #minecraft:raycast_blocks if block ~ ~ ~ #minecraft:raycast_blocks run tag @s add check_west
execute if entity @s[tag=check_west] at @s if entity @e[tag=trophy_board_active,distance=..0.5] run scoreboard players set #board_exists trophy_board 1
execute if entity @s[tag=check_west] if score #board_exists trophy_board matches 0 run tag @s add valid_west

execute if entity @s[tag=valid_north] run summon marker ~ ~ ~ {Tags:["trophy_board_active","facing_south"]}
execute if entity @s[tag=valid_north] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_north] run summon interaction ~ ~0.3 ~-0.3 {width:0.5,height:0.5,response:true,Tags:["trophy_board_interact"]}
execute if entity @s[tag=valid_north] align xyz run summon item_display ~0.5 ~0.3 ~0.5 {Rotation:[90f,0f],item_display:"ground",Tags:["trophy_board_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:trophy_board_empty"}}}
execute if entity @s[tag=valid_north] run kill @s

execute if entity @s[tag=valid_east] run summon marker ~ ~ ~ {Tags:["trophy_board_active","facing_west"]}
execute if entity @s[tag=valid_east] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_east] run summon interaction ~0.3 ~0.3 ~ {width:0.5,height:0.5,response:true,Tags:["trophy_board_interact"]}
execute if entity @s[tag=valid_east] align xyz run summon item_display ~0.5 ~0.3 ~0.5 {Rotation:[-180f,0f],item_display:"ground",Tags:["trophy_board_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:trophy_board_empty"}}}
execute if entity @s[tag=valid_east] run kill @s

execute if entity @s[tag=valid_south] run summon marker ~ ~ ~ {Tags:["trophy_board_active","facing_north"]}
execute if entity @s[tag=valid_south] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_south] run summon interaction ~ ~0.3 ~0.3 {width:0.5,height:0.5,response:true,Tags:["trophy_board_interact"]}
execute if entity @s[tag=valid_south] align xyz run summon item_display ~0.5 ~0.3 ~0.5 {Rotation:[-90f,0f],item_display:"ground",Tags:["trophy_board_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:trophy_board_empty"}}}
execute if entity @s[tag=valid_south] run kill @s

execute if entity @s[tag=valid_west] run summon marker ~ ~ ~ {Tags:["trophy_board_active","facing_east"]}
execute if entity @s[tag=valid_west] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_west] run summon interaction ~-0.3 ~0.3 ~ {width:0.5,height:0.5,response:true,Tags:["trophy_board_interact"]}
execute if entity @s[tag=valid_west] align xyz run summon item_display ~0.5 ~0.3 ~0.5 {Rotation:[0f,0f],item_display:"ground",Tags:["trophy_board_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:trophy_board_empty"}}}
execute if entity @s[tag=valid_west] run kill @s

execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_east] unless entity @s[tag=valid_south] unless entity @s[tag=valid_west] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{trophy_board_item:true},"minecraft:entity_data":{id:"minecraft:marker",Tags:["trophy_board"]},"minecraft:item_model":"minecraft:trophy_board_empty","minecraft:item_name":{"translate":"item.mineraft.trophy_board","fallback":"Trophy Board"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_east] unless entity @s[tag=valid_south] unless entity @s[tag=valid_west] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 1 2
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_east] unless entity @s[tag=valid_south] unless entity @s[tag=valid_west] if score #board_exists trophy_board matches 0 run tellraw @p {"text":"You need a wall to mount this trophy board","color":"red"}
execute unless entity @s[tag=valid_north] unless entity @s[tag=valid_east] unless entity @s[tag=valid_south] unless entity @s[tag=valid_west] run kill @s