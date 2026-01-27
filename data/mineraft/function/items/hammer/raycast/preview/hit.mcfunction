scoreboard players operation #player_link mr.data = @s mr.link

execute as @a if score @s mr.link = #player_link mr.data unless entity @e[type=item_display,tag=mr.hammer_preview] run summon item_display ~ ~ ~ {Glowing:true,glow_color_override:16711680,item_display:"ground",Tags:["mr.hammer_preview","mr.new_hammer_preview"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1},data:{current_structure:""}}

execute as @e[type=item_display,tag=mr.new_hammer_preview,limit=1] run scoreboard players operation @s mr.link = #player_link mr.data
$execute as @e[type=item_display,tag=mr.new_hammer_preview,limit=1] run data modify entity @s item set from entity @e[type=item_display,tag=$(tag),distance=..2,limit=1,sort=nearest] item
$execute as @e[type=item_display,tag=mr.new_hammer_preview,limit=1] run data modify entity @s transformation set from entity @e[type=item_display,tag=$(tag),distance=..2,limit=1,sort=nearest] transformation
$execute as @e[type=item_display,tag=mr.new_hammer_preview,limit=1] run data modify entity @s data.current_structure set value "$(structure)"
tag @e[type=item_display,tag=mr.new_hammer_preview] remove mr.new_hammer_preview

$execute as @e[type=item_display,tag=mr.hammer_preview] if score @s mr.link = #player_link mr.data unless data entity @s {data:{current_structure:"$(structure)"}} run data modify entity @s item.components."minecraft:item_model" set value "minecraft:air"
$execute as @e[type=item_display,tag=mr.hammer_preview] if score @s mr.link = #player_link mr.data unless data entity @s {data:{current_structure:"$(structure)"}} run data modify entity @s data.current_structure set value "$(structure)"

$execute as @e[type=item_display,tag=mr.hammer_preview] if score @s mr.link = #player_link mr.data if data entity @s {data:{current_structure:"$(structure)"}} run data modify entity @s item set from entity @e[type=item_display,tag=$(tag),distance=..2,limit=1,sort=nearest] item
$execute as @e[type=item_display,tag=mr.hammer_preview] if score @s mr.link = #player_link mr.data if data entity @s {data:{current_structure:"$(structure)"}} run data modify entity @s transformation set from entity @e[type=item_display,tag=$(tag),distance=..2,limit=1,sort=nearest] transformation
$execute as @e[type=item_display,tag=mr.hammer_preview] if score @s mr.link = #player_link mr.data at @e[type=item_display,tag=$(tag),distance=..2,limit=1,sort=nearest] run tp @s ~ ~ ~

kill @s