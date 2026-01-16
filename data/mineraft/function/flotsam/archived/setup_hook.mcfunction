#/ execute store result score #item_x mr.data run data get entity @s Pos[0]
#/ execute store result score #item_y mr.data run data get entity @s Pos[1]
#/ execute store result score #item_z mr.data run data get entity @s Pos[2]

#/ execute align xyz run setblock ~ 62 ~ barrier[waterlogged=true]
#/ execute align xyz positioned ~ 62 ~ run summon marker ~0.5 ~ ~0.5 {Tags:["mr.flotsam_barrier","mr.new_barrier"]}

#/ execute as @e[type=marker,tag=mr.new_barrier,limit=1] run scoreboard players operation @s mr.flotsam_id = @e[type=item,tag=mr.flotsam,sort=nearest,limit=1] mr.flotsam_id
#/ tag @e[type=marker,tag=mr.new_barrier] remove mr.new_barrier
#/ tp @s ~ 63 ~
#/ data modify entity @e[type=fishing_bobber,limit=1,sort=nearest] Motion[0] set value 0.0d
#/ data modify entity @e[type=fishing_bobber,limit=1,sort=nearest] Motion[2] set value 0.0d
#/ execute as @e[type=fishing_bobber,limit=1,sort=nearest,tag=!mr.caught] run tp @s ~ 64.5 ~
#/ data modify entity @e[type=fishing_bobber,limit=1,sort=nearest] Motion[1] set value -0.4d

#/ execute as @e[type=fishing_bobber,limit=1,sort=nearest] run tag @s add mr.caught

#/ schedule function mineraft:flotsam/motion/cleanup_hook 2t