execute as @e[tag=this_receiver] run scoreboard players operation @p receiver_linked = @s receiver_id
tellraw @s [{"bold":true,"color":"blue","italic":false,"text":"-- Receiver Configuration --"}]
tellraw @s [{"bold":false,"color":"gold","italic":false,"text":"- Large Island "},"[",{"click_event":{"action":"run_command","command":"/trigger receiver_target set 1"},"color":"green","text":"Select"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"yellow","italic":false,"text":"- Small Island "},"[",{"click_event":{"action":"run_command","command":"/trigger receiver_target set 2"},"color":"green","text":"Select"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"aqua","italic":false,"text":"- Story Structure "},"[",{"click_event":{"action":"run_command","command":"/trigger receiver_target set 3"},"color":"green","text":"Select"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"red","italic":false,"text":"- Clear Target "},"[",{"click_event":{"action":"run_command","command":"/trigger receiver_target set 99"},"color":"red","text":"Clear"},{"color":"gold","text":"]"}]
tellraw @s [{"bold":false,"color":"blue","italic":false,"text":"-----------------------------"}]

playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1