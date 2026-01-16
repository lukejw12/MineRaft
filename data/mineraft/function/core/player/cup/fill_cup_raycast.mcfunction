execute positioned ~ ~ ~ anchored eyes run summon marker ~ ~ ~ {Tags:["mr.fill_raycast"]}
execute anchored eyes run tp @e[type=marker,tag=mr.fill_raycast,limit=1,sort=nearest] ~ ~ ~ ~ ~

scoreboard players set @e[type=marker,tag=mr.fill_raycast,limit=1,sort=nearest] mr.raycast_dist 50

execute as @e[type=marker,tag=mr.fill_raycast,limit=1,sort=nearest] at @s run function mineraft:core/player/cup/fill_cup_loop