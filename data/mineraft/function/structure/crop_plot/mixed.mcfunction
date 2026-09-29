scoreboard players set #cp.mixed mr.data 0
execute if data storage mineraft:tmp cp{size:"small"} as @e[type=item_display,tag=mr.crop_large,distance=..3] if score @s mr.id = #cp.id mr.data unless data entity @s {data:{state:"empty"}} run scoreboard players set #cp.mixed mr.data 1
execute if data storage mineraft:tmp cp{size:"large"} as @e[type=item_display,tag=mr.crop_small,distance=..3] if score @s mr.id = #cp.id mr.data unless data entity @s {data:{state:"empty"}} run scoreboard players set #cp.mixed mr.data 1
