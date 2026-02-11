execute on passengers unless entity @s[type=item,tag=mr.riding] run return 0
execute as @e[type=item,tag=mr.riding] run tag @s remove mr.riding
execute as @e[type=item,tag=mr.flotsam,distance=..2] run tag @s remove mr.flotsam
kill @s