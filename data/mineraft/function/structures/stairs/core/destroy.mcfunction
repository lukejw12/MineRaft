scoreboard players operation #stairs_id mr.data = @s mr.stairs_id

execute as @e[type=armor_stand,tag=mr.stairs_shulker] if score @s mr.stairs_id = #stairs_id mr.data on passengers run tp @s ~ -500 ~
execute as @e[type=armor_stand,tag=mr.stairs_shulker] if score @s mr.stairs_id = #stairs_id mr.data run kill @s

kill @e[type=shulker,y=-500,dy=10]

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

kill @s