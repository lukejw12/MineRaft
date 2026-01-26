data modify storage mineraft:net display_type set from entity @s data.net_type
execute unless data storage mineraft:net {held_type:"",display_type:""} store success score #different mr.data run data modify storage mineraft:net held_type set from storage mineraft:net display_type
execute if score #different mr.data matches 1 run kill @s
