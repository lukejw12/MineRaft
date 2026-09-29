summon armor_stand ~ ~ ~ {Silent:1b,Small:1b,Invisible:1b,Marker:0b,NoGravity:0b,Tags:["mr.bobber_tracker","mr.new_tracker"],attributes:[{id:scale,base:0.1}]}
scoreboard players add #global mr.bobber_id 1
scoreboard players operation @e[type=armor_stand,tag=mr.new_tracker,limit=1] mr.bobber_id = #global mr.bobber_id
scoreboard players operation @s mr.bobber_id = #global mr.bobber_id
scoreboard players set @e[type=armor_stand,tag=mr.new_tracker,limit=1] mr.bobber_timer 0
tag @e[type=armor_stand,tag=mr.new_tracker] remove mr.new_tracker