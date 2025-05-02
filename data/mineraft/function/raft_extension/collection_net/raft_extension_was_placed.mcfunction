execute if block ~ ~-1 ~1 #valid_center_blocks if block ~ ~-1 ~-1 #raft_replacable run summon marker ~ ~-1 ~-2 {Tags:["active_net","valid_shark_chomp"]}
execute if block ~ ~-1 ~1 #valid_center_blocks if block ~ ~-1 ~-1 #raft_replacable run tag @s add valid
execute if block ~ ~-1 ~1 #valid_center_blocks if block ~ ~-1 ~-1 #raft_replacable run summon item_display ~ ~-0.3 ~-2 {item_display:"ground",Tags:["collection_net_facade"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:collection_net_st"}}}
execute if block ~ ~-1 ~1 #valid_center_blocks if block ~ ~-1 ~-1 #raft_replacable run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
#execute if block ~ ~-1 ~1 #valid_center_blocks if block ~ ~-1 ~-1 #raft_replacable run setblock ~-1 ~-2 ~-3 minecraft:structure_block[mode=load]{ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mineraft:raft_netted",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:1,sizeZ:3}
#execute if block ~ ~-1 ~1 #valid_center_blocks if block ~ ~-1 ~-1 #raft_replacable run setblock ~-1 ~-3 ~-3 redstone_block
#execute if block ~ ~-1 ~1 #valid_center_blocks run fill ~-1 ~-2 ~-3 ~-1 ~-3 ~-3 air
execute if block ~ ~-1 ~1 #valid_center_blocks run fill ~1 ~-1 ~-3 ~-1 ~-1 ~-1 barrier[waterlogged=true]
execute if block ~ ~-1 ~1 #valid_center_blocks run setblock ~ ~-1 ~-2 chest[facing=south,waterlogged=true]
execute if block ~ ~-1 ~1 #valid_center_blocks run kill @s
execute if block ~ ~-1 ~1 #valid_center_blocks if entity @s[tag=valid] run return 0



execute if block ~-1 ~-1 ~ #valid_center_blocks if block ~1 ~-1 ~ #raft_replacable run summon marker ~2 ~-1 ~ {Tags:["active_net","valid_shark_chomp"]}
execute if block ~-1 ~-1 ~ #valid_center_blocks if block ~1 ~-1 ~ #raft_replacable run tag @s add valid
execute if block ~-1 ~-1 ~ #valid_center_blocks if block ~1 ~-1 ~ #raft_replacable run summon item_display ~2 ~-0.3 ~ {item_display:"ground",Tags:["collection_net_facade"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:collection_net_st"}}}
execute if block ~-1 ~-1 ~ #valid_center_blocks if block ~1 ~-1 ~ #raft_replacable run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
#execute if block ~-1 ~-1 ~ #valid_center_blocks if block ~1 ~-1 ~ #raft_replacable run setblock ~1 ~-2 ~-1 minecraft:structure_block[mode=load]{ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mineraft:raft_netted",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:1,sizeZ:3}
#execute if block ~-1 ~-1 ~ #valid_center_blocks if block ~1 ~-1 ~ #raft_replacable run setblock ~1 ~-3 ~-1 redstone_block
#execute if block ~-1 ~-1 ~ #valid_center_blocks run fill ~1 ~-2 ~-1 ~1 ~-3 ~-1 air
execute if block ~-1 ~-1 ~ #valid_center_blocks run fill ~3 ~-1 ~1 ~1 ~-1 ~-1 barrier[waterlogged=true]
execute if block ~-1 ~-1 ~ #valid_center_blocks run setblock ~2 ~-1 ~ chest[facing=south,waterlogged=true]
execute if block ~-1 ~-1 ~ #valid_center_blocks run kill @s
execute if block ~-1 ~-1 ~ #valid_center_blocks if entity @s[tag=valid] run return 0




execute if block ~1 ~-1 ~ #valid_center_blocks if block ~-1 ~-1 ~ #raft_replacable run summon marker ~-2 ~-1 ~ {Tags:["active_net","valid_shark_chomp"]}
execute if block ~1 ~-1 ~ #valid_center_blocks if block ~-1 ~-1 ~ #raft_replacable run tag @s add valid
execute if block ~1 ~-1 ~ #valid_center_blocks if block ~-1 ~-1 ~ #raft_replacable run summon item_display ~-2 ~-0.3 ~ {item_display:"ground",Tags:["collection_net_facade"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:collection_net_st"}}}
execute if block ~1 ~-1 ~ #valid_center_blocks if block ~-1 ~-1 ~ #raft_replacable run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
#execute if block ~1 ~-1 ~ #valid_center_blocks if block ~-1 ~-1 ~ #raft_replacable run setblock ~-3 ~-2 ~-1 minecraft:structure_block[mode=load]{ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mineraft:raft_netted",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:1,sizeZ:3}
#execute if block ~1 ~-1 ~ #valid_center_blocks if block ~-1 ~-1 ~ #raft_replacable run setblock ~-3 ~-3 ~-1 redstone_block
#execute if block ~1 ~-1 ~ #valid_center_blocks run fill ~-3 ~-2 ~-1 ~-3 ~-3 ~-1 air
execute if block ~1 ~-1 ~ #valid_center_blocks run fill ~-3 ~-1 ~-1 ~-1 ~-1 ~1 barrier[waterlogged=true]
execute if block ~1 ~-1 ~ #valid_center_blocks run setblock ~-2 ~-1 ~ chest[facing=south,waterlogged=true]
execute if block ~1 ~-1 ~ #valid_center_blocks run kill @s
execute if block ~1 ~-1 ~ #valid_center_blocks if entity @s[tag=valid] run return 0




execute if block ~ ~-1 ~-1 #valid_center_blocks if block ~ ~-1 ~1 #raft_replacable run summon marker ~ ~-1 ~2 {Tags:["active_net","valid_shark_chomp"]}
execute if block ~ ~-1 ~-1 #valid_center_blocks if block ~ ~-1 ~1 #raft_replacable run tag @s add valid
execute if block ~ ~-1 ~-1 #valid_center_blocks if block ~ ~-1 ~1 #raft_replacable run summon item_display ~ ~-0.3 ~2 {item_display:"ground",Tags:["collection_net_facade"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"minecraft:collection_net_st"}}}
execute if block ~ ~-1 ~-1 #valid_center_blocks if block ~ ~-1 ~1 #raft_replacable run playsound minecraft:block.anvil.use block @a[distance=..10] ~ ~ ~ 1 1.5 1
#execute if block ~ ~-1 ~-1 #valid_center_blocks if block ~ ~-1 ~1 #raft_replacable run setblock ~-1 ~-2 ~1 minecraft:structure_block[mode=load]{ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"mineraft:raft_netted",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:0b,sizeX:3,sizeY:1,sizeZ:3}
#execute if block ~ ~-1 ~-1 #valid_center_blocks if block ~ ~-1 ~1 #raft_replacable run setblock ~-1 ~-3 ~1 redstone_block
#execute if block ~ ~-1 ~-1 #valid_center_blocks run fill ~-1 ~-2 ~1 ~-1 ~-3 ~1 air
execute if block ~ ~-1 ~-1 #valid_center_blocks run fill ~-1 ~-1 ~3 ~1 ~-1 ~1 barrier[waterlogged=true]
execute if block ~ ~-1 ~-1 #valid_center_blocks run setblock ~ ~-1 ~2 chest[facing=south,waterlogged=true]
execute if block ~ ~-1 ~-1 #valid_center_blocks run kill @s 
execute if block ~ ~-1 ~-1 #valid_center_blocks if entity @s[tag=valid] run return 0 


execute unless block ~ ~-1 ~1 #valid_center_blocks run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{net_extension_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["net_extension"]},"minecraft:item_model":"minecraft:collection_net","minecraft:item_name":'Collection Net',"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~1 #valid_center_blocks run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless block ~ ~-1 ~1 #valid_center_blocks run kill @s
execute unless block ~ ~-1 ~1 #valid_center_blocks run return 0

execute unless block ~-1 ~-1 ~ #valid_center_blocks run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{net_extension_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["net_extension"]},"minecraft:item_model":"minecraft:collection_net","minecraft:item_name":'Collection Net',"minecraft:rarity":"uncommon"}}}
execute unless block ~-1 ~-1 ~ #valid_center_blocks run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless block ~-1 ~-1 ~ #valid_center_blocks run kill @s
execute unless block ~-1 ~-1 ~ #valid_center_blocks run return 0

execute unless block ~1 ~-1 ~ #valid_center_blocks run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{net_extension_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["net_extension"]},"minecraft:item_model":"minecraft:collection_net","minecraft:item_name":'Collection Net',"minecraft:rarity":"uncommon"}}}
execute unless block ~1 ~-1 ~ #valid_center_blocks run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless block ~1 ~-1 ~ #valid_center_blocks run kill @s
execute unless block ~1 ~-1 ~ #valid_center_blocks run return 0

execute unless block ~ ~-1 ~-1 #valid_center_blocks run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{net_extension_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["net_extension"]},"minecraft:item_model":"minecraft:collection_net","minecraft:item_name":'Collection Net',"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~-1 #valid_center_blocks run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless block ~ ~-1 ~-1 #valid_center_blocks run kill @s
execute unless block ~ ~-1 ~-1 #valid_center_blocks run return 0

execute unless block ~ ~-1 ~-1 #raft_replacable run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{net_extension_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["net_extension"]},"minecraft:item_model":"minecraft:collection_net","minecraft:item_name":'Collection Net',"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~-1 #raft_replacable run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless block ~ ~-1 ~-1 #raft_replacable run kill @s
execute unless block ~ ~-1 ~-1 #raft_replacable run return 0


execute unless block ~1 ~-1 ~ #raft_replacable run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{net_extension_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["net_extension"]},"minecraft:item_model":"minecraft:collection_net","minecraft:item_name":'Collection Net',"minecraft:rarity":"uncommon"}}}
execute unless block ~1 ~-1 ~ #raft_replacable run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless block ~1 ~-1 ~ #raft_replacable run kill @s
execute unless block ~1 ~-1 ~ #raft_replacable run return 0


execute unless block ~-1 ~-1 ~ #raft_replacable run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{net_extension_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["net_extension"]},"minecraft:item_model":"minecraft:collection_net","minecraft:item_name":'Collection Net',"minecraft:rarity":"uncommon"}}}
execute unless block ~-1 ~-1 ~ #raft_replacable run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless block ~-1 ~-1 ~ #raft_replacable run kill @s
execute unless block ~-1 ~-1 ~ #raft_replacable run return 0


execute unless block ~ ~-1 ~1 #raft_replacable run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{net_extension_item:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["net_extension"]},"minecraft:item_model":"minecraft:collection_net","minecraft:item_name":'Collection Net',"minecraft:rarity":"uncommon"}}}
execute unless block ~ ~-1 ~1 #raft_replacable run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless block ~ ~-1 ~1 #raft_replacable run kill @s
execute unless block ~ ~-1 ~1 #raft_replacable run return 0
