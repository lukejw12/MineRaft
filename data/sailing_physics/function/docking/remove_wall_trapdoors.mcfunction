data modify storage mineraft:walls destroy_side set from entity @s data.side
execute positioned ~ ~-1 ~ run function mineraft:structures/walls/utils/trapdoors/remove with storage mineraft:walls
