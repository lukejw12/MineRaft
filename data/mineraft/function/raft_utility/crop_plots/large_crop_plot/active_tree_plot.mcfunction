execute unless block ~ ~-1 ~ #valid_center_blocks run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=tree_plot_facade]
execute unless block ~ ~-1 ~ #valid_center_blocks run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=tree_plot_interact]
execute unless block ~ ~-1 ~ #valid_center_blocks run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{tree_plot:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["tree_plot"]},"minecraft:item_model":"minecraft:tree_crop_plot_item","minecraft:item_name":"Large Crop Plot","minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #valid_center_blocks run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #valid_center_blocks run kill @s

execute unless block ~ ~ ~ structure_void run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=tree_plot_facade]
execute unless block ~ ~ ~ structure_void run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=tree_plot_interact]
execute unless block ~ ~ ~ structure_void run setblock ~ ~ ~ air
execute unless block ~ ~ ~ structure_void run kill @s

scoreboard players operation #temp tree_plot = @s tree_plot
tag @e[type=item_display,tag=tree_plot_facade] remove this_tree_plot_facade
tag @e[type=interaction,tag=tree_plot_interact] remove this_tree_plot_interact
execute as @e[type=item_display,tag=tree_plot_facade] if score @s tree_plot = #temp tree_plot run tag @s add this_tree_plot_facade
execute as @e[type=interaction,tag=tree_plot_interact] if score @s tree_plot = #temp tree_plot run tag @s add this_tree_plot_interact

execute as @e[type=interaction,tag=this_tree_plot_interact] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:structure_block run function mineraft:hammer/hammer_right_click

execute as @e[type=interaction,tag=this_tree_plot_interact] at @s if items entity @e[type=item_display,tag=this_tree_plot_facade,limit=1] contents *[minecraft:item_model="minecraft:tree_crop_plot"] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:oak_sapling run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=tree_plot_active] add interact_tree

execute as @e[type=interaction,tag=this_tree_plot_interact] at @s if items entity @e[type=item_display,tag=this_tree_plot_facade,limit=1] contents *[minecraft:item_model="minecraft:grown_tree_crop_plot"] if data entity @s interaction run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=tree_plot_active] add interact_collect

execute as @s[tag=interact_tree] run item modify entity @e[type=item_display,tag=this_tree_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:planted_tree_crop_plot"}}
execute as @s[tag=interact_tree] as @e[type=interaction,tag=this_tree_plot_interact] on target at @s run playsound item.crop.plant block @a[distance=..5] ~ ~ ~ 100 1 1
execute as @s[tag=interact_tree] as @e[type=interaction,tag=this_tree_plot_interact] on target run advancement grant @s only mineraft:objectives/harvester
execute as @s[tag=interact_tree] as @e[type=interaction,tag=this_tree_plot_interact] on target run clear @s oak_sapling 1
execute as @s[tag=interact_tree] run tag @s add growth
execute as @s[tag=interact_tree] run tag @s remove interact_tree

execute as @s[tag=interact_collect] run item modify entity @e[type=item_display,tag=this_tree_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:tree_crop_plot"}}
execute as @s[tag=interact_collect] as @e[type=interaction,tag=this_tree_plot_interact] on target at @s run playsound entity.zombie.break_wooden_door block @a[distance=..5] ~ ~ ~ 100 2 1
execute as @s[tag=interact_collect] as @e[type=interaction,tag=this_tree_plot_interact] on target run loot give @s loot mineraft:tree_harvest
execute as @s[tag=interact_collect] run tag @s remove interact_collect

execute as @e[type=interaction,tag=this_tree_plot_interact] if data entity @s interaction run data remove entity @s interaction

execute as @s[tag=growth] run scoreboard players add @s growth_timer 1
execute if score @s growth_timer matches 6000.. if entity @s[tag=growth] run item modify entity @e[type=item_display,tag=this_tree_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:grown_tree_crop_plot"}}
execute if score @s growth_timer matches 6000.. if entity @s[tag=growth] run tag @s remove growth
execute if score @s growth_timer matches 6000.. run scoreboard players set @s growth_timer 0

tag @e[tag=this_tree_plot_facade] remove this_tree_plot_facade
tag @e[tag=this_tree_plot_interact] remove this_tree_plot_interact