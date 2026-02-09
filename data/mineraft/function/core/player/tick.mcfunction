execute if entity @s[tag=!mr.has_ray_id] run function mineraft:core/player/link

execute as @e[type=item_display,tag=mr.foundation,distance=..10] at @s run function mineraft:core/foundation/tick

execute if entity @s[tag=mr.place] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:core/raycast/start {"function":"mineraft:core/raycast/helpers/place_foundation"}
execute if entity @s[tag=mr.place_net] at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:core/raycast/start {"function":"mineraft:structures/collection_net/raycast/place_net"}

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function mineraft:core/player/held_item_check