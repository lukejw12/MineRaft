execute as @s[tag=new] at @s run summon item_display ~ ~ ~ {teleport_duration:2,item_display:"ground",Tags:["boat"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"minecraft:sailing_raft"}}}
execute as @s[tag=new] at @s run ride @e[tag=boat,sort=nearest,limit=1] mount @s
execute as @s[tag=new] at @s run tag @s remove new
execute as @s[tag=!new] at @s unless entity @e[type=item_display,limit=1,sort=nearest,distance=..6,tag=boat] run kill @s
execute as @s[tag=!new] at @s rotated ~ ~ run data modify entity @e[type=item_display,limit=1,sort=nearest,distance=..6,tag=boat] Rotation set from entity @s Rotation
