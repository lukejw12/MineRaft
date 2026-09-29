execute if entity @a[tag=mr.interacting,predicate=mineraft:is_sneaking] run return run function mineraft:structure/sail/turn {steps:-1,deg:-45}
execute if data entity @s data.anim run return fail
execute if data entity @s {data:{sail:"open"}} run return run function mineraft:animations/sails/close
function mineraft:animations/sails/open
