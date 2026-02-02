scoreboard players operation #crop_plot_id mr.data = @s mr.crop_plot_id

scoreboard players set #empty_count mr.data 0

execute as @e[type=item_display,tag=mr.small_crop_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data if data entity @s {data:{state:"empty"}} run scoreboard players add #empty_count mr.data 1

execute if score #empty_count mr.data matches 3 run data modify entity @s data.state set value "dry"
execute if score #empty_count mr.data matches 3 run function mineraft:structures/crop_plot/basic/small/models/plot/update

