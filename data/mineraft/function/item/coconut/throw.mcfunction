scoreboard players set #co.hand mr.data 0
execute if items entity @s weapon.offhand *[custom_data~{mr.coconut:1b}] run scoreboard players set #co.hand mr.data 2
execute if items entity @s weapon.mainhand *[custom_data~{mr.coconut:1b}] run scoreboard players set #co.hand mr.data 1
execute if score #co.hand mr.data matches 0 run return fail
execute unless entity @s[gamemode=creative] if score #co.hand mr.data matches 1 run item modify entity @s weapon.mainhand mineraft:remove_one
execute unless entity @s[gamemode=creative] if score #co.hand mr.data matches 2 run item modify entity @s weapon.offhand mineraft:remove_one
execute store result score #co.px mr.data run data get entity @s Pos[0] 1000
execute store result score #co.py mr.data run data get entity @s Pos[1] 1000
execute store result score #co.pz mr.data run data get entity @s Pos[2] 1000
execute positioned as @s rotated as @s run summon marker ^ ^ ^1 {Tags:["mr.co_aim"]}
execute store result score #co.mx mr.data run data get entity @e[type=marker,tag=mr.co_aim,limit=1] Pos[0] 1000
execute store result score #co.my mr.data run data get entity @e[type=marker,tag=mr.co_aim,limit=1] Pos[1] 1000
execute store result score #co.mz mr.data run data get entity @e[type=marker,tag=mr.co_aim,limit=1] Pos[2] 1000
kill @e[type=marker,tag=mr.co_aim]
scoreboard players operation #co.mx mr.data -= #co.px mr.data
scoreboard players operation #co.my mr.data -= #co.py mr.data
scoreboard players operation #co.mz mr.data -= #co.pz mr.data
data modify storage mineraft:tmp co set value {motion:[0.0d,0.0d,0.0d]}
execute store result storage mineraft:tmp co.motion[0] double 0.0011 run scoreboard players get #co.mx mr.data
execute store result storage mineraft:tmp co.motion[1] double 0.0011 run scoreboard players get #co.my mr.data
execute store result storage mineraft:tmp co.motion[2] double 0.0011 run scoreboard players get #co.mz mr.data
data modify storage mineraft:tmp co.owner set from entity @s UUID
execute anchored eyes positioned ^ ^ ^0.4 summon snowball run function mineraft:item/coconut/launch
playsound minecraft:entity.snowball.throw player @a ~ ~ ~ 0.8 0.6
