tag @s remove hp.flying
tag @s add hp.floating
data modify entity @s Motion set value [0.0d,0.0d,0.0d]
tp @s ~ 62.0 ~
function hook_physics:hook/grab_flotsam
