execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=crop_plot_facade]
execute unless block ~ ~-1 ~ #raft_materials run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=crop_plot_interact]
execute unless block ~ ~-1 ~ #raft_materials run setblock ~ ~ ~ air
execute unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{crop_plot:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["crop_plot"]},"minecraft:item_model":"minecraft:crop_plot","minecraft:item_name":{"translate":"item.mineraft.crop_plot","fallback":"Crop Plot"},"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~ #raft_materials run kill @s

execute unless block ~ ~ ~ structure_void run kill @e[type=item_display,distance=..1,sort=nearest,limit=1,tag=crop_plot_facade]
execute unless block ~ ~ ~ structure_void run kill @e[type=interaction,distance=..1,sort=nearest,limit=1,tag=crop_plot_interact]
execute unless block ~ ~ ~ structure_void run setblock ~ ~ ~ air
execute unless block ~ ~ ~ structure_void run kill @s





execute as @e[type=minecraft:interaction,tag=crop_plot_interact] if data entity @s interaction on target if entity @s[nbt={SelectedItem:{id:"minecraft:structure_block"}}] run function mineraft:hammer/hammer_right_click

execute as @e[type=minecraft:interaction,tag=crop_plot_interact] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents *[minecraft:item_model="minecraft:crop_plot_empty"] if data entity @s interaction run tag @s add interact_thatch
execute as @e[type=minecraft:interaction,tag=crop_plot_interact] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents *[minecraft:item_model="minecraft:crop_plot_grown_thatch"] if data entity @s interaction run tag @s add interact_collect_thatch
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_thatch] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] as @e[tag=interact_thatch,type=interaction,sort=nearest,limit=1] at @s run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_planted"}}
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_thatch] at @s on target at @s if entity @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] run playsound item.crop.plant block @a[distance=..5] ~ ~ ~ 100 1 1 
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_thatch] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:sugar_cane"}}] run clear @s sugar_cane 1

execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_thatch] at @s run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=crop_plot_active] add interact_thatch
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_thatch] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents *[minecraft:item_model="minecraft:crop_plot_planted"] run tag @e[type=marker,distance=..1,tag=crop_plot_active] add growth
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_collect_thatch] at @s run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_collect_thatch] on target at @s run playsound block.crop.break block @a[distance=..5] ~ ~ ~ 100 1 1 
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_collect_thatch] on target run loot give @s loot mineraft:thatch_harvest
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_collect_thatch] run tag @s remove interact_collect_thatch
execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_thatch] run tag @s remove interact_thatch


#execute as @e[type=minecraft:interaction,tag=crop_plot_interact] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents *[minecraft:item_model="minecraft:crop_plot_empty"] if data entity @s interaction run tag @s add interact_wheat
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents *[minecraft:item_model="minecraft:crop_plot_grown_thatch"] if data entity @s interaction run tag @s add interact_collect_wheat
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_wheat] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:wheat_seeds"}}] as @e[tag=interact_wheat,type=interaction,sort=nearest,limit=1] at @s run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_planted"}}
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_wheat] at @s on target at @s if entity @s[nbt={SelectedItem:{id:"minecraft:wheat_seeds"}}] run playsound item.crop.plant block @a[distance=..5] ~ ~ ~ 100 1 1
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_wheat] at @s on target if entity @s[nbt={SelectedItem:{id:"minecraft:wheat_seeds"}}] run clear @s wheat_seeds 1

#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_wheat] at @s run tag @e[type=marker,distance=..1,limit=1,sort=nearest,tag=crop_plot_active] add interact_wheat
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_wheat] at @s if items entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents *[minecraft:item_model="minecraft:crop_plot_planted"] run tag @e[type=marker,distance=..1,tag=crop_plot_active] add growth
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_collect_wheat] at @s run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_empty"}}
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_collect_wheat] on target at @s run playsound block.crop.break block @a[distance=..5] ~ ~ ~ 100 1 1 
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_collect_wheat] on target run loot give @s loot mineraft:wheat_harvest
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_collect_wheat] run tag @s remove interact_collect_wheat
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact,tag=interact_wheat] run tag @s remove interact_wheat
#execute as @e[type=minecraft:interaction,tag=crop_plot_interact] if data entity @s interaction run data remove entity @s interaction

execute as @s[tag=growth] run scoreboard players add @s growth_timer 1
execute if score @s growth_timer matches 2400.. run tag @s remove growth
execute if score @s growth_timer matches 2400.. run item modify entity @e[type=item_display,distance=..1,limit=1,sort=nearest,tag=crop_plot_facade] contents {function:"set_components",components:{"minecraft:item_model":"minecraft:crop_plot_grown_thatch"}}
execute if score @s growth_timer matches 2400.. run scoreboard players set @s growth_timer 0
