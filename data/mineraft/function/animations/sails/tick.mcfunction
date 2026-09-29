execute unless data entity @s data.anim run return 0
scoreboard players add @s mr.timer 1
scoreboard players operation #sa.id mr.data = @s mr.id
execute if data entity @s {data:{anim:"open"}} run function mineraft:animations/sails/open_tick
execute if data entity @s {data:{anim:"close"}} run function mineraft:animations/sails/close_tick
