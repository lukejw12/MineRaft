execute as @e[type=armor_stand,tag=mr.launched] at @s if entity @p[distance=..1.5] run function mineraft:flotsam/motion/deliver
execute as @e[type=armor_stand,tag=mr.bobber_tracker] run function mineraft:flotsam/motion/check_orphan
execute unless entity @e[type=fishing_bobber,limit=1] as @e[type=armor_stand,tag=mr.bobber_tracker,tag=!mr.launched] run function mineraft:flotsam/motion/launch_to_player
execute as @e[type=fishing_bobber,tag=!mr.has_tracker] at @s run function mineraft:flotsam/motion/spawn_tracker
execute as @e[type=fishing_bobber,tag=!mr.has_tracker] run tag @s add mr.has_tracker
execute as @e[type=fishing_bobber,tag=mr.has_tracker] run function mineraft:flotsam/motion/update_tracker

execute if entity @s[tag=mr.riding] unless entity @e[type=armor_stand,tag=mr.bobber_tracker,distance=..2] run tag @s remove mr.riding
execute if entity @s[tag=mr.riding] run return fail
function mineraft:flotsam/motion/move
execute unless entity @e[type=marker,tag=mr.spawn,distance=..50] run function mineraft:flotsam/core/cleanup


