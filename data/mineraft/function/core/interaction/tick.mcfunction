execute if entity @s[tag=mr.smeltery_interaction] if data entity @s interaction run function mineraft:structures/smeltery/interact/interact
execute if entity @s[tag=mr.smeltery_interaction] if data entity @s attack run function mineraft:structures/smeltery/core/destroy

execute if entity @s[tag=mr.net_interaction] if data entity @s interaction run function mineraft:structures/collection_net/interaction/interact
execute if entity @s[tag=mr.purifier_interaction] if data entity @s interaction run function mineraft:structures/water_purifier/interaction/interact
execute if entity @s[tag=mr.purifier_interaction] if data entity @s attack run function mineraft:structures/water_purifier/core/destroy

execute if entity @s[tag=mr.crop_plot_interaction] if data entity @s interaction if score @s mr.crop_plot_id = @e[type=item_display,tag=mr.crop_plot_display,sort=nearest,limit=1,distance=..3] mr.crop_plot_id if entity @e[type=item_display,tag=mr.crop_plot_display,tag=mr.basic_type,sort=nearest,limit=1,distance=..3] run function mineraft:structures/crop_plot/basic/large/interaction/interact
execute if entity @s[tag=mr.crop_plot_interaction] if data entity @s interaction if score @s mr.crop_plot_id = @e[type=item_display,tag=mr.crop_plot_display,sort=nearest,limit=1,distance=..3] mr.crop_plot_id if entity @e[type=item_display,tag=mr.crop_plot_display,tag=mr.advanced_type,sort=nearest,limit=1,distance=..3] run function mineraft:structures/crop_plot/advanced/large/interaction/interact

execute if entity @s[tag=mr.crop_plot_interaction] if data entity @s attack run function mineraft:structures/crop_plot/shared/large/interaction/attack
execute if entity @s[tag=mr.small_crop_plot_interaction] if data entity @s interaction run function mineraft:structures/crop_plot/basic/small/interaction/interact
execute if entity @s[tag=mr.small_adv_crop_plot_interaction] if data entity @s interaction run function mineraft:structures/crop_plot/advanced/small/interaction/interact

execute if entity @s[tag=mr.grill_interaction] if data entity @s interaction run function mineraft:structures/grill/interaction/interact
execute if entity @s[tag=mr.grill_interaction] if data entity @s attack run function mineraft:structures/grill/core/destroy

execute if entity @s[tag=mr.recycler_interaction] if data entity @s interaction run function mineraft:structures/recycler/interaction/interact
execute if entity @s[tag=mr.recycler_interaction] if data entity @s attack run function mineraft:structures/recycler/core/destroy