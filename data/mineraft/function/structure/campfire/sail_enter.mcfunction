scoreboard players operation #cf.id mr.data = @s mr.id
summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:["mr.part","mr.p.proxy","mr.new_proxy"],teleport_duration:2,block_state:{Name:"minecraft:campfire",Properties:{lit:"false"}}}
scoreboard players operation @e[type=block_display,tag=mr.new_proxy,limit=1] mr.id = #cf.id mr.data
tag @e[type=block_display,tag=mr.new_proxy] remove mr.new_proxy
execute if score @s mr.fuel matches 1.. run function mineraft:structure/campfire/proxy {lit:"true"}
