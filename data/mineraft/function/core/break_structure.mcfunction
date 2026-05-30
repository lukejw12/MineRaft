function mineraft:core/break_particle
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5
execute if data entity @s data.placed_item unless entity @p[distance=..10,gamemode=creative] run function mineraft:core/return_item
