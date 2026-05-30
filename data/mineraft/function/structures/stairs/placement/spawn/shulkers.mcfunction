execute store result score #stairs_id mr.data run scoreboard players add #global mr.stairs_id 1

execute if data storage mineraft:stairs {direction:"south"} run summon item_display ~0.5 ~-1 ~-0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon item_display ~0.5 ~-0.5 ~0 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon item_display ~0.5 ~0 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon item_display ~0.5 ~0.5 ~1 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon item_display ~0.5 ~1 ~1.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"south"} run summon item_display ~0.5 ~1.5 ~2 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon item_display ~0.5 ~-1 ~1.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon item_display ~0.5 ~-0.5 ~1 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon item_display ~0.5 ~0 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon item_display ~0.5 ~0.5 ~0 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon item_display ~0.5 ~1 ~-0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"north"} run summon item_display ~0.5 ~1.5 ~-1 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon item_display ~-0.5 ~-1 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon item_display ~0 ~-0.5 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon item_display ~0.5 ~0 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon item_display ~1 ~0.5 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon item_display ~1.5 ~1 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"east"} run summon item_display ~2 ~1.5 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon item_display ~1.5 ~-1 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon item_display ~1 ~-0.5 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon item_display ~0.5 ~0 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon item_display ~0 ~0.5 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon item_display ~-0.5 ~1 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute if data storage mineraft:stairs {direction:"west"} run summon item_display ~-1 ~1.5 ~0.5 {item_display:"none",Tags:["mr.stairs_shulker","mr.new_shulker"],item:{id:"minecraft:air",count:1},Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}]}
execute as @e[type=item_display,tag=mr.new_shulker,limit=1] run scoreboard players operation @s mr.stairs_id = #stairs_id mr.data
tag @e[type=item_display,tag=mr.new_shulker] remove mr.new_shulker

execute store result storage mineraft:stairs stairs_id int 1 run scoreboard players get #stairs_id mr.data