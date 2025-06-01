# Generate random number 1-10
execute store result score #random dummy run random value 1..8

# Display the tip based on random number
execute if score #random dummy matches 1 run bossbar set mineraft:tips name {"text":"Tip: Drink water regularly to maintain your hydration!","color":"gold"}
execute if score #random dummy matches 2 run bossbar set mineraft:tips name {"text":"Tip: Unlock blueprints and recipes by discovering islands!","color":"gold"}
execute if score #random dummy matches 3 run bossbar set mineraft:tips name {"text":"Tip: Storms can make the shark more agressive, stay prepared!","color":"gold"}
execute if score #random dummy matches 4 run bossbar set mineraft:tips name {"text":"Tip: Use the carpentry table for quick easy crafting!","color":"gold"}
execute if score #random dummy matches 5 run bossbar set mineraft:tips name {"text":"Tip: Low hydration causes damage, don't let it hit zero!","color":"gold"}
execute if score #random dummy matches 6 run bossbar set mineraft:tips name {"text":"Tip: Items destroyed by the shark are gone forever! Protect your raft!","color":"gold"}
execute if score #random dummy matches 7 run bossbar set mineraft:tips name {"text":"Tip: Pure water restores more hydration than unpure sources!","color":"gold"}
execute if score #random dummy matches 8 run bossbar set mineraft:tips name {"text":"Tip: Cook food to get better nutrition and effects!","color":"gold"}
execute if score #random dummy matches 9 run bossbar set mineraft:tips name {"text":"Tip: Run /trigger tips to toggle the preview of these tips!","color":"gold"}
