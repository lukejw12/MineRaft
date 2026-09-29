execute on passengers run return 0
summon shulker ~ ~ ~ {Tags:["mr.shulker","mr.new_shulker"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Peek:0b,AttachFace:0b,DeathLootTable:"minecraft:empty",active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}]}
ride @e[type=shulker,tag=mr.new_shulker,limit=1] mount @s
tag @e[type=shulker,tag=mr.new_shulker] remove mr.new_shulker
