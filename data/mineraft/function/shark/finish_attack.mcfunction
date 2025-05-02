execute at @e[tag=valid_shark_chomp,limit=1,sort=nearest] run playsound minecraft:entity.zombie.attack_wooden_door block @a[distance=..10] ~ ~ ~ 1 1
execute at @e[tag=valid_shark_chomp,limit=1,sort=nearest] run execute if block ~ ~ ~ #valid_center_blocks unless block ~ ~ ~ grass_block align xz run fill ~-1 ~ ~-1 ~1 ~ ~1 water
execute at @e[tag=valid_shark_chomp,limit=1,sort=nearest] run execute if block ~ ~ ~ #valid_center_blocks unless block ~ ~ ~ grass_block align xz run fill ~-1 ~20 ~-1 ~1 ~1 ~1 air

scoreboard players set @s shark.detect 0