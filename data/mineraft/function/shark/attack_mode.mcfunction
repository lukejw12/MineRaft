

attribute @s follow_range base set 60
data modify entity @s AngryAt set from entity @p[predicate=mineraft:in_water,distance=..60] UUID
data modify entity @s AngerTime set value 200

execute if entity @a[distance=..60,predicate=mineraft:in_water] run tp @s ~ ~ ~ facing entity @p[predicate=mineraft:in_water,distance=..60] feet

execute if entity @a[distance=..5,predicate=mineraft:in_water] run function mineraft:shark/apply_close_chase_motion
execute if entity @a[distance=5..60,predicate=mineraft:in_water] run function mineraft:shark/apply_chase_motion