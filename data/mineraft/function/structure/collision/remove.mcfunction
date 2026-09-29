data modify storage mineraft:tmp ap set from entity @s data.mr.blocks
execute unless data storage mineraft:tmp ap[0] run return 0
function mineraft:structure/claim/root_block
scoreboard players operation #c.id mr.data = @s mr.id
function mineraft:structure/collision/remove_loop
