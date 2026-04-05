
execute as @e[type=item_display,tag=mr.surface,distance=..5,limit=1,sort=nearest] run tellraw @a [{"text":"Grid data: ","color":"gold"},{"nbt":"data.grid","entity":"@s","color":"white"}]
execute unless entity @e[type=item_display,tag=mr.surface,distance=..5] run tellraw @a {"text":"No surface entity within 5 blocks","color":"red"}
