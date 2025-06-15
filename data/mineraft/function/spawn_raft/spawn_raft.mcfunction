execute if score #raft_placed raft_tracker matches 1.. run return 0

execute unless entity @e[tag=central_raft_facade] positioned ~ 62 ~ align xz run summon item_display ~0.5 ~0.7 ~0.5 {item_display:"ground",Tags:["central_raft_facade"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:foundation"}}}
execute positioned ~ 62 ~ align xz run fill ~1 ~ ~1 ~-1 ~ ~-1 barrier[waterlogged=true]
execute positioned ~ 62 ~ align xz run setblock ~ ~ ~ chain[axis=y,waterlogged=true]
execute positioned ~ 62 ~ align xz run setblock ~ ~1 ~1 barrel{LootTable:"mineraft:start_barrel"}

tp @a ~ 63 ~
execute unless entity @e[tag=central_raft] run summon marker ~0.5 63 ~0.5 {Tags:["central_raft"]}
scoreboard objectives add raft_tracker dummy
scoreboard players set #raft_placed raft_tracker 1

tellraw @a {"text":"Welcome to MineRaft! enjoy your stay...","color":"aqua"}
tellraw @a {"text":"-- Important Info --","color":"red"}
tellraw @a {"text":"- Check advancements tab for the Research Guide!","color":"gold"}
tellraw @a {"text":"- Resource pack is REQUIRED","color":"yellow"}
tellraw @a {"text":"- This is a BETA which means anything can change during","color":"gold"}
tellraw @a {"text":"development, old worlds may not be usable on new versions.","color":"yellow"}
tellraw @a [{"bold":true,"click_event":{"action":"run_command","command":"/function admin_commands:gameplay_menu/a/settings"},"color":"gold","text":"Click Me "},{"bold":false,"color":"gold","text":"to open Gameplay Settings (must have op)"}]
tellraw @a {"text":"- If playing multiplayer please wait until all players join before opening barrel (loot generates based on player count)","color":"yellow"}
tellraw @a {"text":"Join the discord to report bugs! (linked on modrinth)","color":"yellow"}
tellraw @a {"text":"Datapack made by @_itsjustluke on discord!","color":"gold"}
schedule function mineraft:spawn_raft/prepare_resource_spawn 100t append
