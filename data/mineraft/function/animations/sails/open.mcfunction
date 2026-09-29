data modify entity @s data.anim set value "open"
scoreboard players set @s mr.timer 0
scoreboard players operation #sa.id mr.data = @s mr.id
function mineraft:animations/sails/key {anim:"open",k:0}
