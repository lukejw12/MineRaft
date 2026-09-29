$data modify storage mineraft:tmp hk set value {h:"$(h)"}
data modify storage mineraft:tmp hk.t set from entity @s data.mr.type
function mineraft:structure/hook/find with storage mineraft:tmp hk
execute if data storage mineraft:tmp hk.fn run function mineraft:structure/hook/exec with storage mineraft:tmp hk
