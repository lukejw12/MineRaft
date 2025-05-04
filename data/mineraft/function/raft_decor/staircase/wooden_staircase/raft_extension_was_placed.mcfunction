# Initialize scoreboard (add to a load function)
scoreboard objectives add staircase_id dummy

# --- NORTH FACING STAIRCASE ---

# Initialize
execute if entity @e[tag=raft_extension_display,tag=facing_north,distance=..6] unless entity @e[type=shulker,distance=..1] if blocks ~ ~ ~ ~ ~2 ~-2 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run tag @s add valid

# Generate a unique ID for this group of entities
execute if entity @s[tag=valid] run scoreboard players add #max staircase_id 1
execute if entity @s[tag=valid] run scoreboard players operation #current staircase_id = #max staircase_id

# Summon marker and tag with ID
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run summon marker ~ ~ ~ {Tags:["wooden_stairs","facing_north","staircase_entity","recent_spawned"]}


# Summon item_display and tag with ID
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run summon item_display ~ ~0.3 ~-1 {item_display:"ground",Tags:["staircase_facade","staircase_entity","recent_spawned"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_staircase"}}}

# Play sound
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1

# Summon all steps with the recent_spawned tag
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-2.1 ~0.4 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-1.7 ~0.15 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-1.5 ~-0.05 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-1.2 ~-0.3 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-1 ~-0.6 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-0.8 ~-0.8 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-0.5 ~-1.1 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-0.2 ~-1.4 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~ ~-1.7 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~0.2 ~-2 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~0.4 ~-2.2 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}

# Now assign the same ID to all recently spawned entities
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run scoreboard players operation @e[tag=recent_spawned] staircase_id = #current staircase_id

# Remove the recent_spawned tag from all entities
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run tag @e[tag=recent_spawned] remove recent_spawned


# Kill command
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run kill @s
execute if entity @s[tag=valid] if blocks ~ ~ ~-1 ~ ~2 ~-1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials if entity @s[tag=valid] run return 0


# --- SOUTH FACING STAIRCASE ---

# Initialize
execute if entity @e[tag=raft_extension_display,tag=facing_south,distance=..6] unless entity @e[type=shulker,distance=..1] if blocks ~ ~ ~ ~ ~2 ~2 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run tag @s add valid

# Generate a unique ID for this group of entities
execute if entity @s[tag=valid] run scoreboard players add #max staircase_id 1
execute if entity @s[tag=valid] run scoreboard players operation #current staircase_id = #max staircase_id

# Summon marker and tag with ID
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run summon marker ~ ~ ~ {Tags:["wooden_stairs","facing_south","staircase_entity","recent_spawned"]}


# Summon item_display and tag with ID (with proper rotation for south)
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run summon item_display ~ ~0.3 ~1 {item_display:"ground",Tags:["staircase_facade","staircase_entity","recent_spawned"],transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_staircase"}}}

# Play sound
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1

# Summon all steps with the recent_spawned tag (adjusted for south direction)
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-2.1 ~-0.4 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-1.7 ~-0.15 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-1.5 ~0.05 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-1.2 ~0.3 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-1 ~0.6 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-0.8 ~0.8 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-0.5 ~1.1 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~-0.2 ~1.4 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~ ~1.7 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~0.2 ~2 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~ ~0.4 ~2.2 {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}

# Now assign the same ID to all recently spawned entities
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run scoreboard players operation @e[tag=recent_spawned] staircase_id = #current staircase_id

# Remove the recent_spawned tag from all entities
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run tag @e[tag=recent_spawned] remove recent_spawned


# Kill command
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run kill @s
execute if entity @s[tag=valid] if blocks ~ ~ ~1 ~ ~2 ~1 ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials if entity @s[tag=valid] run return 0


# --- EAST FACING STAIRCASE ---

# Initialize
execute if entity @e[tag=raft_extension_display,tag=facing_east,distance=..6] unless entity @e[type=shulker,distance=..1] if blocks ~ ~ ~ ~2 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run tag @s add valid

# Generate a unique ID for this group of entities
execute if entity @s[tag=valid] run scoreboard players add #max staircase_id 1
execute if entity @s[tag=valid] run scoreboard players operation #current staircase_id = #max staircase_id

# Summon marker and tag with ID
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run summon marker ~ ~ ~ {Tags:["wooden_stairs","facing_east","staircase_entity","recent_spawned"]}


# Summon item_display and tag with ID (with proper rotation for east)
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run summon item_display ~1 ~0.3 ~ {item_display:"ground",Tags:["staircase_facade","staircase_entity","recent_spawned"],transformation:{left_rotation:[0f,-0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_staircase"}}}

# Play sound
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1

# Summon all steps with the recent_spawned tag (adjusted for east direction)
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-0.4 ~-2.1 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~0.15 ~-1.7 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~0.05 ~-1.5 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~0.3 ~-1.2 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~0.6 ~-1 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~0.8 ~-0.8 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~1.1 ~-0.5 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~1.4 ~-0.2 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~1.7 ~ ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~2 ~0.2 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~2.2 ~0.4 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}

# Now assign the same ID to all recently spawned entities
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run scoreboard players operation @e[tag=recent_spawned] staircase_id = #current staircase_id

# Remove the recent_spawned tag from all entities
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run tag @e[tag=recent_spawned] remove recent_spawned

# Kill command
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run kill @s
execute if entity @s[tag=valid] if blocks ~1 ~ ~ ~1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials if entity @s[tag=valid] run return 0


# --- WEST FACING STAIRCASE ---

# Initialize
execute if entity @e[tag=raft_extension_display,tag=facing_west,distance=..6] unless entity @e[type=shulker,distance=..1] if blocks ~ ~ ~ ~-2 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run tag @s add valid

# Generate a unique ID for this group of entities
execute if entity @s[tag=valid] run scoreboard players add #max staircase_id 1
execute if entity @s[tag=valid] run scoreboard players operation #current staircase_id = #max staircase_id

# Summon marker and tag with ID
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run summon marker ~ ~ ~ {Tags:["wooden_stairs","facing_west","staircase_entity","recent_spawned"]}


# Summon item_display and tag with ID (with proper rotation for west)
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run summon item_display ~-1 ~0.3 ~ {item_display:"ground",Tags:["staircase_facade","staircase_entity","recent_spawned"],transformation:{left_rotation:[0f,0.7071f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:wooden_staircase"}}}

# Play sound
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1

# Summon all steps with the recent_spawned tag (adjusted for west direction)
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~0.4 ~-2.1 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-0.15 ~-1.7 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-0.05 ~-1.5 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-0.3 ~-1.2 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-0.6 ~-1 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-0.8 ~-0.8 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-1.1 ~-0.5 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-1.4 ~-0.2 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-1.7 ~ ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}
#execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-2 ~0.2 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.2}]}]}
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials positioned ~ ~1.9 ~ run summon item_display ~-2.2 ~0.4 ~ {Silent:1b,NoGravity:1b,Tags:["staircase_steps","staircase_entity","recent_spawned"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Silent:1b,NoAI:1b,Peek:0b,AttachFace:0b,Tags:["staircase_steps","recent_spawned"],attributes:[{id:"minecraft:scale",base:0.4}]}]}

# Now assign the same ID to all recently spawned entities
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run scoreboard players operation @e[tag=recent_spawned] staircase_id = #current staircase_id

# Remove the recent_spawned tag from all entities
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run tag @e[tag=recent_spawned] remove recent_spawned

# Kill command
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials run kill @s
execute if entity @s[tag=valid] if blocks ~-1 ~ ~ ~-1 ~2 ~ ~ 300 ~ masked if block ~ ~-1 ~ #raft_materials if entity @s[tag=valid] run return 0


execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #raft_materials run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_staircase:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_staircase"]},"minecraft:item_model":"minecraft:wooden_stairs","minecraft:item_name":{"translate":"item.mineraft.wooden_staircase","fallback":"Wooden Staircase"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #raft_materials run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #raft_materials run kill @s
execute unless entity @s[tag=valid] unless block ~ ~-1 ~ #raft_materials run return 0

execute unless entity @s[tag=valid] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{wooden_staircase:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["wooden_staircase"]},"minecraft:item_model":"minecraft:wooden_stairs","minecraft:item_name":{"translate":"item.mineraft.wooden_staircase","fallback":"Wooden Staircase"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid] run kill @s
execute unless entity @s[tag=valid] run return 0
