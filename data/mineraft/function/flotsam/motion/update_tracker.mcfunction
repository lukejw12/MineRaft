data modify storage mineraft:flotsam bobber_motion set from entity @s Motion
execute at @s run tp @e[type=armor_stand,tag=mr.bobber_tracker,tag=!mr.launched,limit=1] ~ ~ ~
execute as @e[type=armor_stand,tag=mr.bobber_tracker,tag=!mr.launched] if score @s mr.bobber_id = @e[type=fishing_bobber,sort=nearest,limit=1] mr.bobber_id run data modify entity @s Motion set from storage mineraft:flotsam bobber_motion
execute at @s unless entity @e[type=item,tag=mr.riding] if block ~ ~-1 ~ #mineraft:shark.swimable run function mineraft:flotsam/motion/hook_flotsam