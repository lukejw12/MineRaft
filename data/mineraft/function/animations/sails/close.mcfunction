data modify entity @s data.anim set value "close"
scoreboard players set @s mr.timer 0
scoreboard players operation #sa.id mr.data = @s mr.id
function mineraft:animations/sails/key {anim:"close",k:0}
