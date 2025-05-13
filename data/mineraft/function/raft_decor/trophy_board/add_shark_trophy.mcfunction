execute on target run tag @s add trophy_adder
tag @e[type=interaction,distance=..0.5,limit=1,sort=nearest] add display_shark
execute as @a[tag=trophy_adder,distance=..5,limit=1] run clear @s minecraft:prismarine_shard 1

scoreboard players set @s trophy_has_shark 1

execute as @e[type=item_display,tag=trophy_board_facade,limit=1,sort=nearest,distance=..2] run item modify entity @s contents {function:"set_components",components:{"minecraft:item_model":"minecraft:trophy_board_shark"}}

playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 1.2 1

#execute as @a[tag=trophy_adder,distance=..5,limit=1] if score @s shark_kills matches 5.. run advancement grant @s only mineraft:objectives/shark_slayer

tag @a remove trophy_adder