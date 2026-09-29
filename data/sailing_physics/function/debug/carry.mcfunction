scoreboard players set #d.mode sp.data -1
execute if score #sp.carry_mode sp.const matches -2147483648.. run scoreboard players operation #d.mode sp.data = #sp.carry_mode sp.const
scoreboard players set #d.sail sp.data -1
execute if score #sp.sailing sp.data matches -2147483648.. run scoreboard players operation #d.sail sp.data = #sp.sailing sp.data
scoreboard players set #d.ride sp.data 0
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} run scoreboard players set #d.ride sp.data 1
scoreboard players set #d.fly sp.data 0
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_flying:true}}} run scoreboard players set #d.fly sp.data 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_fall_flying:true}}} run scoreboard players set #d.fly sp.data 1
scoreboard players set #d.spec sp.data 0
execute if entity @s[gamemode=spectator] run scoreboard players set #d.spec sp.data 1
scoreboard players set #d.deck sp.data 0
execute at @s positioned ~-1.8 ~-5.5 ~-1.8 if entity @e[type=item_display,tag=sp.raft_entity,tag=mr.floorlike,dx=2.6,dy=5,dz=2.6] run scoreboard players set #d.deck sp.data 1
execute at @s store result score #d.tiles sp.data if entity @e[type=item_display,tag=mr.floorlike,distance=..4]
execute at @s store result score #d.rtiles sp.data if entity @e[type=item_display,tag=mr.floorlike,tag=sp.raft_entity,distance=..4]
scoreboard players set #d.tag sp.data 0
execute if entity @s[tag=sp.carried] run scoreboard players set #d.tag sp.data 1
scoreboard players set #d.saddle sp.data 0
execute if items entity @s saddle *[custom_data~{sp_carry:1b}] run scoreboard players set #d.saddle sp.data 1
tellraw @s [{"text":"[carry] ","color":"gold"},{"text":"sailing ","color":"gray"},{"score":{"name":"#d.sail","objective":"sp.data"}},{"text":"  carry mode ","color":"gray"},{"score":{"name":"#d.mode","objective":"sp.data"}},{"text":" (1 = new carry, -1 = new files not installed)","color":"dark_gray"}]
tellraw @s [{"text":"[carry] ","color":"gold"},{"text":"riding ","color":"gray"},{"score":{"name":"#d.ride","objective":"sp.data"}},{"text":"  flying ","color":"gray"},{"score":{"name":"#d.fly","objective":"sp.data"}},{"text":"  spectator ","color":"gray"},{"score":{"name":"#d.spec","objective":"sp.data"}},{"text":"  on deck ","color":"gray"},{"score":{"name":"#d.deck","objective":"sp.data"}}]
tellraw @s [{"text":"[carry] ","color":"gold"},{"text":"floor tiles near you ","color":"gray"},{"score":{"name":"#d.tiles","objective":"sp.data"}},{"text":", sailing with the raft ","color":"gray"},{"score":{"name":"#d.rtiles","objective":"sp.data"}},{"text":"  carried ","color":"gray"},{"score":{"name":"#d.tag","objective":"sp.data"}},{"text":"  carry saddle ","color":"gray"},{"score":{"name":"#d.saddle","objective":"sp.data"}}]
tellraw @s [{"text":"[carry] ","color":"gold"},{"text":"raft speed ","color":"gray"},{"score":{"name":"#sp.vx","objective":"sp.data"}},{"text":", ","color":"gray"},{"score":{"name":"#sp.vz","objective":"sp.data"}},{"text":"  push ","color":"gray"},{"score":{"name":"#sp.push_x","objective":"sp.data"}},{"text":", ","color":"gray"},{"score":{"name":"#sp.push_z","objective":"sp.data"}}]
