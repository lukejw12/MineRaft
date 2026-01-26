execute as @s[tag=mr.smeltery_interaction] if data entity @s interaction run function mineraft:structures/smeltery/interact/interact
execute as @s[tag=mr.smeltery_interaction] if data entity @s attack run function mineraft:structures/smeltery/core/destroy

execute as @s[tag=mr.net_interaction] if data entity @s interaction run function mineraft:structures/collection_net/interaction/interact
execute as @s[tag=mr.purifier_interaction] if data entity @s interaction run function mineraft:structures/water_purifier/interaction/interact
execute as @s[tag=mr.purifier_interaction] if data entity @s attack run function mineraft:structures/water_purifier/core/destroy
