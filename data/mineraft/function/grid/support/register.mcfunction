execute at @s positioned ~0.5 ~ ~0.5 as @e[type=item_display,tag=mr.surface,distance=..10,limit=1,sort=nearest] run function mineraft:grid/support/do_register

execute if data entity @s {data:{support_type:"solid_wooden_support"}} at @s positioned ~0.5 ~ ~0.5 as @e[type=item_display,tag=mr.surface,distance=..10,limit=1,sort=nearest] run function mineraft:grid/support/set_solid_max
