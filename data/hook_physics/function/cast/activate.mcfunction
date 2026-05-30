advancement revoke @s only hook_physics:use_hook
execute if score @s hp.cooldown matches 1.. run return 0
scoreboard players operation #hp.caster_link hp.data = @s mr.link
scoreboard players set #hp.has_hook hp.data 0
execute as @e[tag=hp.hook] if score @s hp.link = #hp.caster_link hp.data run scoreboard players set #hp.has_hook hp.data 1
execute if score #hp.has_hook hp.data matches 1 run return run function hook_physics:hook/retract
scoreboard players operation #hp.dist hp.data = #hp.max_dist hp.const
execute store result score #hp.yaw hp.data run data get entity @s Rotation[0]
scoreboard players operation #hp.yaw hp.data %= #360 hp.const
execute if score #hp.yaw hp.data matches ..-1 run scoreboard players add #hp.yaw hp.data 360
execute at @s anchored eyes positioned ^ ^ ^1 run function hook_physics:cast/launch
tag @s add hp.caster
item modify entity @s weapon.mainhand hook_physics:cast
scoreboard players set @s hp.cooldown 4
