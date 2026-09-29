summon item_display ~ ~ ~ {Tags:["mr.preview","mr.new_preview"],Glowing:1b,glow_color_override:65280,brightness:{sky:15,block:15},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
scoreboard players operation @e[type=item_display,tag=mr.new_preview,limit=1] mr.link = @s mr.link
scoreboard players operation @e[type=item_display,tag=mr.new_preview,limit=1] mr.pidx = #pv.i mr.data
tag @e[type=item_display,tag=mr.new_preview] remove mr.new_preview
