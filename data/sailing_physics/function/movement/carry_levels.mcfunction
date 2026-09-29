execute store success score @s sp.c.xs if score #cx sp.data matches ..-1
execute if score #cx sp.data matches ..-1 run scoreboard players operation #cx sp.data *= #-1 sp.const
execute if score #cx sp.data matches 2048.. run scoreboard players set #cx sp.data 2047
execute store success score @s sp.c.zs if score #cz sp.data matches ..-1
execute if score #cz sp.data matches ..-1 run scoreboard players operation #cz sp.data *= #-1 sp.const
execute if score #cz sp.data matches 2048.. run scoreboard players set #cz sp.data 2047
execute if score #cx sp.data = @s sp.c.lx if score #cz sp.data = @s sp.c.lz run return 0
scoreboard players operation @s sp.c.lx = #cx sp.data
scoreboard players operation @s sp.c.xf = #cx sp.data
scoreboard players operation @s sp.c.xf %= #256 sp.const
scoreboard players operation @s sp.c.xc = #cx sp.data
scoreboard players operation @s sp.c.xc /= #256 sp.const
scoreboard players operation @s sp.c.lz = #cz sp.data
scoreboard players operation @s sp.c.zf = #cz sp.data
scoreboard players operation @s sp.c.zf %= #256 sp.const
scoreboard players operation @s sp.c.zc = #cz sp.data
scoreboard players operation @s sp.c.zc /= #256 sp.const
item modify entity @s saddle sailing_physics:carry_levels
