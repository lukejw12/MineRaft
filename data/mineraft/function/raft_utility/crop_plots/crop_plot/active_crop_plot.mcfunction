execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=crop_plot_facade]
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=crop_plot_interact]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{crop_plot:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["crop_plot"]},"minecraft:item_model":"minecraft:crop_plot","minecraft:item_name":{"translate":"item.mineraft.crop_plot","fallback":"Crop Plot"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s

execute unless block ~ ~ ~ structure_void run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=crop_plot_facade]
execute unless block ~ ~ ~ structure_void run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=crop_plot_interact]
execute unless block ~ ~ ~ structure_void run setblock ~ ~ ~ air
execute unless block ~ ~ ~ structure_void run kill @s

scoreboard players operation #temp crop_plot = @s crop_plot
tag @e[type=item_display,tag=crop_plot_facade] remove this_crop_plot_facade
tag @e[type=interaction,tag=crop_plot_interact] remove this_crop_plot_interact
execute as @e[type=item_display,tag=crop_plot_facade] if score @s crop_plot = #temp crop_plot run tag @s add this_crop_plot_facade
execute as @e[type=interaction,tag=crop_plot_interact] if score @s crop_plot = #temp crop_plot run tag @s add this_crop_plot_interact

execute as @e[type=interaction,tag=this_crop_plot_interact] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:structure_block run function mineraft:hammer/hammer_right_click

execute as @e[type=interaction,tag=this_crop_plot_interact] at @s if items entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents *[minecraft:item_model="minecraft:crop_plot_empty"] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:sugar_cane run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=crop_plot_active] add interact_thatch

execute as @e[type=interaction,tag=this_crop_plot_interact] at @s if items entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents *[minecraft:item_model="minecraft:crop_plot_empty"] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:wheat_seeds run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=crop_plot_active] add interact_wheat

execute as @e[type=interaction,tag=this_crop_plot_interact] at @s if items entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents *[minecraft:item_model="minecraft:crop_plot_empty"] if data entity @s interaction on target if items entity @s weapon.mainhand minecraft:sweet_berries run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=crop_plot_active] add interact_berry

execute as @e[type=interaction,tag=this_crop_plot_interact] at @s if items entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents *[minecraft:item_model="minecraft:small_crop_plot_thatch"] if data entity @s interaction run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=crop_plot_active] add interact_collect_thatch

execute as @e[type=interaction,tag=this_crop_plot_interact] at @s if items entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents *[minecraft:item_model="minecraft:small_crop_plot_wheat"] if data entity @s interaction run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=crop_plot_active] add interact_collect_wheat

execute as @e[type=interaction,tag=this_crop_plot_interact] at @s if items entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents *[minecraft:item_model="minecraft:small_crop_plot_sweet_berry"] if data entity @s interaction run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=crop_plot_active] add interact_collect_berry

execute as @s[tag=interact_thatch] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_planted"}}
execute as @s[tag=interact_thatch] as @e[type=interaction,tag=this_crop_plot_interact] on target at @s run playsound item.crop.plant block @a[distance=..5] ~ ~ ~ 100 1 1 
execute as @s[tag=interact_thatch] as @e[type=interaction,tag=this_crop_plot_interact] on target run clear @s sugar_cane 1
execute as @s[tag=interact_thatch] run tag @s add growth_thatch
execute as @s[tag=interact_thatch] run tag @s remove interact_thatch

execute as @s[tag=interact_wheat] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_planted"}}
execute as @s[tag=interact_wheat] as @e[type=interaction,tag=this_crop_plot_interact] on target at @s run playsound item.crop.plant block @a[distance=..5] ~ ~ ~ 100 1 1
execute as @s[tag=interact_wheat] as @e[type=interaction,tag=this_crop_plot_interact] on target run clear @s wheat_seeds 1
execute as @s[tag=interact_wheat] run tag @s add growth_wheat
execute as @s[tag=interact_wheat] run tag @s remove interact_wheat

execute as @s[tag=interact_berry] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_planted"}}
execute as @s[tag=interact_berry] as @e[type=interaction,tag=this_crop_plot_interact] on target at @s run playsound item.crop.plant block @a[distance=..5] ~ ~ ~ 100 1 1
execute as @s[tag=interact_berry] as @e[type=interaction,tag=this_crop_plot_interact] on target run clear @s sweet_berries 1
execute as @s[tag=interact_berry] run tag @s add growth_berry
execute as @s[tag=interact_berry] run tag @s remove interact_berry

execute as @s[tag=interact_collect_thatch] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}
execute as @s[tag=interact_collect_thatch] as @e[type=interaction,tag=this_crop_plot_interact] on target at @s run playsound block.crop.break block @a[distance=..5] ~ ~ ~ 100 1 1 
execute as @s[tag=interact_collect_thatch] as @e[type=interaction,tag=this_crop_plot_interact] on target run loot give @s loot mineraft:thatch_harvest
execute as @s[tag=interact_collect_thatch] run tag @s remove interact_collect_thatch

execute as @s[tag=interact_collect_wheat] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}
execute as @s[tag=interact_collect_wheat] as @e[type=interaction,tag=this_crop_plot_interact] on target at @s run playsound block.crop.break block @a[distance=..5] ~ ~ ~ 100 1 1 
execute as @s[tag=interact_collect_wheat] as @e[type=interaction,tag=this_crop_plot_interact] on target run loot give @s loot mineraft:wheat_harvest
execute as @s[tag=interact_collect_wheat] run tag @s remove interact_collect_wheat

execute as @s[tag=interact_collect_berry] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}
execute as @s[tag=interact_collect_berry] as @e[type=interaction,tag=this_crop_plot_interact] on target at @s run playsound block.crop.break block @a[distance=..5] ~ ~ ~ 100 1 1 
execute as @s[tag=interact_collect_berry] as @e[type=interaction,tag=this_crop_plot_interact] on target run loot give @s loot mineraft:berry_harvest
execute as @s[tag=interact_collect_berry] run tag @s remove interact_collect_berry

execute as @e[type=interaction,tag=this_crop_plot_interact] if data entity @s interaction run data remove entity @s interaction

execute as @s[tag=growth_thatch] run scoreboard players add @s growth_timer 1
execute if score @s growth_timer matches 2500.. if entity @s[tag=growth_thatch] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:small_crop_plot_thatch"}}
execute if score @s growth_timer matches 2500.. if entity @s[tag=growth_thatch] run tag @s remove growth_thatch
execute if score @s growth_timer matches 2500.. run scoreboard players set @s growth_timer 0

execute as @s[tag=growth_wheat] run scoreboard players add @s growth_timer 1
execute if score @s growth_timer matches 2500.. if entity @s[tag=growth_wheat] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:small_crop_plot_wheat"}}
execute if score @s growth_timer matches 2500.. if entity @s[tag=growth_wheat] run tag @s remove growth_wheat
execute if score @s growth_timer matches 2500.. run scoreboard players set @s growth_timer 0

execute as @s[tag=growth_berry] run scoreboard players add @s growth_timer 1
execute if score @s growth_timer matches 2500.. if entity @s[tag=growth_berry] run item modify entity @e[type=item_display,tag=this_crop_plot_facade,limit=1] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:small_crop_plot_sweet_berry"}}
execute if score @s growth_timer matches 2500.. if entity @s[tag=growth_berry] run tag @s remove growth_berry
execute if score @s growth_timer matches 2500.. run scoreboard players set @s growth_timer 0

tag @e[tag=this_crop_plot_facade] remove this_crop_plot_facade
tag @e[tag=this_crop_plot_interact] remove this_crop_plot_interact