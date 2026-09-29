tag @s remove mr.new
tag @s add mr.part
scoreboard players operation @s mr.id = #s.id mr.data
data modify entity @s Tags append from storage mineraft:tmp p.tags[]
execute if score #s.first mr.data matches 1 run tag @s add mr.root
execute if score #s.first mr.data matches 1 run tag @s add mr.new_root
scoreboard players set #s.first mr.data 0
