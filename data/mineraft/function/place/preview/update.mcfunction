$tp @s $(x) $(y) $(z) $(yaw) 0
$data merge entity @s {item_display:"$(mode)",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:$(t),scale:$(s)},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"$(model)"}}}
execute if score #pl.valid mr.data matches 1 run data modify entity @s glow_color_override set value 65280
execute unless score #pl.valid mr.data matches 1 run data modify entity @s glow_color_override set value 16711680
execute store result entity @s teleport_duration int 2 run scoreboard players get #sp.sailing sp.data
scoreboard players set @s mr.cd 3
