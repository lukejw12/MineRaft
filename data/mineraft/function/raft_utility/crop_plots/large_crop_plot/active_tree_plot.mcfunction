execute unless block ~ ~-1 ~ #valid_center_blocks run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=tree_plot_facade]
execute unless block ~ ~-1 ~ #valid_center_blocks run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=tree_plot_interact]
execute unless block ~ ~-1 ~ #valid_center_blocks run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{tree_plot:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["tree_plot"]},"minecraft:item_model":"minecraft:tree_crop_plot_item","minecraft:item_name":"Large Crop Plot","minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #valid_center_blocks run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #valid_center_blocks run kill @s

execute unless block ~ ~ ~ structure_void run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=tree_plot_facade]
execute unless block ~ ~ ~ structure_void run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=tree_plot_interact]
execute unless block ~ ~ ~ structure_void run setblock ~ ~ ~ air
execute unless block ~ ~ ~ structure_void run kill @s





execute as @e[type=minecraft:interaction,tag=tree_plot_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click

execute as @e[type=minecraft:interaction,tag=tree_plot_interact] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=tree_plot_facade] contents *[minecraft:item_model="minecraft:tree_crop_plot"] if data entity @s interaction run tag @s add interact
execute as @e[type=minecraft:interaction,tag=tree_plot_interact] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=tree_plot_facade] contents *[minecraft:item_model="minecraft:grown_tree_crop_plot"] if data entity @s interaction run tag @s add interact_collect
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:oak_sapling"}}] as @e[tag=interact,type=interaction,sort=nearest,limit=1] at @s run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=tree_plot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:planted_tree_crop_plot"}}
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact] at @s on target at @s if entity @s[nbt={SelectedItem:{id:"minecraft:oak_sapling"}}] run playsound item.crop.plant block @a[distance=..5] ~ ~ ~ 100 1 1
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:oak_sapling"}}] run advancement grant @s only mineraft:objectives/harvester
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:oak_sapling"}}] run clear @s oak_sapling 1

execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact] at @s run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=tree_plot_active] add interact
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=tree_plot_facade] contents *[minecraft:item_model="minecraft:planted_tree_crop_plot"] run tag @e[type=marker,distance=..1,tag=tree_plot_active] add growth
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact_collect] at @s run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=tree_plot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:tree_crop_plot"}}
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact_collect] on target at @s run playsound entity.zombie.break_wooden_door block @a[distance=..5] ~ ~ ~ 100 2 1
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact_collect] on target run loot give @s loot mineraft:tree_harvest
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact_collect] run tag @s remove interact_collect
execute as @e[type=minecraft:interaction,tag=tree_plot_interact,tag=interact] run tag @s remove interact
execute as @e[type=minecraft:interaction,tag=tree_plot_interact] if data entity @s interaction run data remove entity @s interaction

execute as @s[tag=growth] run scoreboard players add @s growth_timer 1
execute if score @s growth_timer matches 6000.. run tag @s remove growth
execute if score @s growth_timer matches 6000.. run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=tree_plot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:grown_tree_crop_plot"}}
execute if score @s growth_timer matches 6000.. run scoreboard players set @s growth_timer 0
