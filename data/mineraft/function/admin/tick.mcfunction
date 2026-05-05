scoreboard players enable @a mr.admin_open
scoreboard players enable @a mr.admin

# --- Handle menu open ---
execute as @a[scores={mr.admin_open=1..}] run dialog show @s mineraft:admin/main
scoreboard players reset @a[scores={mr.admin_open=1..}] mr.admin_open

# --- Structures ---
execute as @a[scores={mr.admin=1}] run function mineraft:core/utils/commands {item:"foundation",type:"basic",name:"Basic"}
execute as @a[scores={mr.admin=2}] run function mineraft:core/utils/commands {item:"foundation",type:"advanced",name:"Advanced"}
execute as @a[scores={mr.admin=3}] run function mineraft:core/utils/commands {item:"wall",type:"wooden",name:"Wooden"}
execute as @a[scores={mr.admin=4}] run function mineraft:core/utils/commands {item:"wall",type:"solid_wooden",name:"Solid Wooden"}
execute as @a[scores={mr.admin=5}] run function mineraft:core/utils/commands {item:"platform",type:"wooden",name:"Wooden"}
execute as @a[scores={mr.admin=6}] run function mineraft:core/utils/commands {item:"platform",type:"solid_wooden",name:"Solid Wooden"}
execute as @a[scores={mr.admin=7}] run function mineraft:core/utils/commands {item:"stairs",type:"wooden",name:"Wooden"}
execute as @a[scores={mr.admin=8}] run function mineraft:core/utils/commands {item:"stairs",type:"solid_wooden",name:"Solid Wooden"}
execute as @a[scores={mr.admin=9}] run function mineraft:core/utils/commands {item:"support",type:"wooden",name:"Wooden"}
execute as @a[scores={mr.admin=10}] run function mineraft:core/utils/commands {item:"support",type:"solid_wooden",name:"Solid Wooden"}
execute as @a[scores={mr.admin=11}] run function mineraft:core/utils/commands {item:"foundation_armor",type:"",name:""}

# --- Crop Plots ---
execute as @a[scores={mr.admin=12}] run function mineraft:core/utils/commands {item:"small_crop_plot",type:"basic_small_crop_plot",name:"Basic"}
execute as @a[scores={mr.admin=13}] run function mineraft:core/utils/commands {item:"small_crop_plot",type:"advanced_small_crop_plot",name:"Advanced"}
execute as @a[scores={mr.admin=14}] run function mineraft:core/utils/commands {item:"large_crop_plot",type:"basic_crop_plot",name:"Basic"}
execute as @a[scores={mr.admin=15}] run function mineraft:core/utils/commands {item:"large_crop_plot",type:"advanced_crop_plot",name:"Advanced"}

# --- Stations ---
execute as @a[scores={mr.admin=16}] run function mineraft:core/utils/commands {item:"smeltery",type:"basic",name:"Basic"}
execute as @a[scores={mr.admin=17}] run function mineraft:core/utils/commands {item:"purifier",type:"basic",name:"Basic"}
execute as @a[scores={mr.admin=18}] run function mineraft:core/utils/commands {item:"grill",type:"basic",name:"Basic"}
execute as @a[scores={mr.admin=19}] run function mineraft:core/utils/commands {item:"recycler",type:"basic",name:"Basic"}
execute as @a[scores={mr.admin=20}] run function mineraft:core/utils/commands {item:"collection_net",type:"simple",name:"Simple"}
execute as @a[scores={mr.admin=21}] run function mineraft:core/utils/commands {item:"collection_net",type:"advanced",name:"Advanced"}

# --- Tools ---
execute as @a[scores={mr.admin=22}] run function mineraft:core/utils/commands {item:"builders_hammer",type:"",name:""}
execute as @a[scores={mr.admin=23}] run function mineraft:core/utils/commands {item:"cup",type:"empty",name:"Empty"}

# --- Raw Items (use existing loot tables) ---
execute as @a[scores={mr.admin=30}] run loot give @s loot mineraft:items/plank
execute as @a[scores={mr.admin=31}] run loot give @s loot mineraft:items/palm_leaf
execute as @a[scores={mr.admin=32}] run loot give @s loot mineraft:items/palm_seed
execute as @a[scores={mr.admin=33}] run loot give @s loot mineraft:items/metal_ingot
execute as @a[scores={mr.admin=34}] run loot give @s loot mineraft:items/scrap
execute as @a[scores={mr.admin=35}] run loot give @s loot mineraft:items/plastic
execute as @a[scores={mr.admin=36}] run loot give @s loot mineraft:items/trash_cube
execute as @a[scores={mr.admin=37}] run loot give @s loot mineraft:items/food/cooked_cod
execute as @a[scores={mr.admin=38}] run loot give @s loot mineraft:items/food/potato

# Reset after handling
scoreboard players reset @a[scores={mr.admin=1..}] mr.admin
