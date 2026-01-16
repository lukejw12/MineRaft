execute as @s[tag=mr.smeltery_interaction] if data entity @s interaction run function mineraft:structures/smeltery/interact/interact
execute as @s[tag=mr.smeltery_interaction] if data entity @s attack run function mineraft:structures/smeltery/destroy

execute as @s[tag=mr.flotsam_interaction] if data entity @s interaction run function mineraft:flotsam/collection/collect

execute as @s[tag=mr.purifier_interaction] if data entity @s interaction run function mineraft:structures/water_purifier/interact
execute as @s[tag=mr.purifier_interaction] if data entity @s attack run function mineraft:structures/water_purifier/destroy
