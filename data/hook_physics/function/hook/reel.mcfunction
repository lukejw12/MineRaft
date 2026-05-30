scoreboard players add @s hp.tick 1

execute as @e[type=item,tag=mr.flotsam,tag=!mr.riding,distance=..3,limit=3,sort=nearest] run function hook_physics:hook/mount_item

scoreboard players operation #hp.caster_link hp.data = @s hp.link
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data store result score #hp.px hp.data run data get entity @s Pos[0] 1000
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data store result score #hp.py hp.data run data get entity @s Pos[1] 1000
execute as @a[tag=hp.caster] if score @s mr.link = #hp.caster_link hp.data store result score #hp.pz hp.data run data get entity @s Pos[2] 1000
execute store result score #hp.hx hp.data run data get entity @s Pos[0] 1000
execute store result score #hp.hy hp.data run data get entity @s Pos[1] 1000
execute store result score #hp.hz hp.data run data get entity @s Pos[2] 1000

scoreboard players operation #hp.dx hp.data = #hp.px hp.data
scoreboard players operation #hp.dx hp.data -= #hp.hx hp.data
scoreboard players operation #hp.dy hp.data = #hp.py hp.data
scoreboard players operation #hp.dy hp.data -= #hp.hy hp.data
scoreboard players operation #hp.dz hp.data = #hp.pz hp.data
scoreboard players operation #hp.dz hp.data -= #hp.hz hp.data

scoreboard players operation #hp.adx hp.data = #hp.dx hp.data
execute if score #hp.adx hp.data matches ..-1 run scoreboard players operation #hp.adx hp.data *= #-1 hp.const
scoreboard players operation #hp.adz hp.data = #hp.dz hp.data
execute if score #hp.adz hp.data matches ..-1 run scoreboard players operation #hp.adz hp.data *= #-1 hp.const
scoreboard players operation #hp.ady hp.data = #hp.dy hp.data
execute if score #hp.ady hp.data matches ..-1 run scoreboard players operation #hp.ady hp.data *= #-1 hp.const
scoreboard players operation #hp.check hp.data = #hp.adx hp.data
scoreboard players operation #hp.check hp.data += #hp.adz hp.data
scoreboard players operation #hp.check hp.data += #hp.ady hp.data

execute if score @s hp.tick matches 10.. if score #hp.check hp.data matches ..2000 run return run function hook_physics:hook/finish_reel

scoreboard players operation #hp.dx hp.data /= #3 hp.const
scoreboard players operation #hp.dy hp.data /= #3 hp.const
scoreboard players operation #hp.dz hp.data /= #3 hp.const

execute store result storage hook_physics:motion mx double 0.001 run scoreboard players get #hp.dx hp.data
execute store result storage hook_physics:motion my double 0.001 run scoreboard players get #hp.dy hp.data
execute store result storage hook_physics:motion mz double 0.001 run scoreboard players get #hp.dz hp.data
function hook_physics:hook/do_reel_motion with storage hook_physics:motion
