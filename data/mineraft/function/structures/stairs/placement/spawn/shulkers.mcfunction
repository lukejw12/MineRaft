execute store result score #stairs_id mr.data run scoreboard players add #global mr.stairs_id 1

execute if data storage mineraft:stairs {direction:"south"} run summon armor_stand ~0.5 ~-1 ~-0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon armor_stand ~0.5 ~-0.5 ~0 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon armor_stand ~0.5 ~0 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon armor_stand ~0.5 ~0.5 ~1 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon armor_stand ~0.5 ~1 ~1.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon armor_stand ~0.5 ~1.5 ~2 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon armor_stand ~0.5 ~-1 ~1.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon armor_stand ~0.5 ~-0.5 ~1 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon armor_stand ~0.5 ~0 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon armor_stand ~0.5 ~0.5 ~0 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon armor_stand ~0.5 ~1 ~-0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon armor_stand ~0.5 ~1.5 ~-1 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon armor_stand ~-0.5 ~-1 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon armor_stand ~0 ~-0.5 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon armor_stand ~0.5 ~0 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon armor_stand ~1 ~0.5 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon armor_stand ~1.5 ~1 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon armor_stand ~2 ~1.5 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon armor_stand ~1.5 ~-1 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon armor_stand ~1 ~-0.5 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon armor_stand ~0.5 ~0 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon armor_stand ~0 ~0.5 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon armor_stand ~-0.5 ~1 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon armor_stand ~-1 ~1.5 ~0.5 {NoGravity:1b,Small:1b,Invisible:1b,Tags:["mr.stairs_shulker","mr.new_shulker"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=armor_stand,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=armor_stand,tag=mr.new_shulker] remove mr.new_shulker

execute store result storage mineraft:stairs stairs_id int 1 run scoreboard players get #stairs_id mr.data