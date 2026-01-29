execute if data storage mineraft:walls {side:"north"} positioned ~ ~ ~-1 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.51] run return fail
execute if data storage mineraft:walls {side:"south"} positioned ~ ~ ~1 if entity @e[type=item_display,tag=mr.wall_display,distance=..0.51] run return fail
execute if data storage mineraft:walls {side:"east"} positioned ~1 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.51] run return fail
execute if data storage mineraft:walls {side:"west"} positioned ~-1 ~ ~ if entity @e[type=item_display,tag=mr.wall_display,distance=..0.51] run return fail

execute if data storage mineraft:walls {side:"north"} positioned ~ ~ ~-1 run function mineraft:structures/walls/placement/spawn/spawn
execute if data storage mineraft:walls {side:"south"} positioned ~ ~ ~1 run function mineraft:structures/walls/placement/spawn/spawn
execute if data storage mineraft:walls {side:"east"} positioned ~1 ~ ~ run function mineraft:structures/walls/placement/spawn/spawn
execute if data storage mineraft:walls {side:"west"} positioned ~-1 ~ ~ run function mineraft:structures/walls/placement/spawn/spawn

