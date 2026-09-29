$data modify entity @s data.output_type set from entity @s data.slot$(n).output
function mineraft:structure/common/give_output
$data remove entity @s data.slot$(n)
data remove entity @s data.output_type
scoreboard players remove @s mr.slots 1
