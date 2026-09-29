$execute if data storage mineraft:grid floor."$(x)/$(y3)/$(z)" run return 0
$execute store result score #dep mr.data run data get storage mineraft:grid cell."$(x)/$(y3)/$(z)"{t:"support"}.id
execute if score #dep mr.data matches 1.. run function mineraft:structure/break/tag_dep
