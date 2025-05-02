
data modify storage mineraft:temp CurrentItem set from entity @e[tag=processing,limit=1] Item

$data modify storage mineraft:temp CurrentItem.Slot set value $(slot)b

data modify block ~ ~ ~ Items append from storage mineraft:temp CurrentItem


kill @e[tag=processing,limit=1]


scoreboard players set #processed temp 1