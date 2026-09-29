$execute store result score #dep mr.data run data get storage mineraft:grid armor."$(x)/$(y)/$(z)".id
execute if score #dep mr.data matches 1.. run function mineraft:structure/break/tag_dep
$execute store result score #dep mr.data run data get storage mineraft:grid edge."n/$(x)/$(y)/$(z)"{tx:$(x),tz:$(z)}.id
execute if score #dep mr.data matches 1.. run function mineraft:structure/break/tag_dep
$execute store result score #dep mr.data run data get storage mineraft:grid edge."w/$(x)/$(y)/$(z)"{tx:$(x),tz:$(z)}.id
execute if score #dep mr.data matches 1.. run function mineraft:structure/break/tag_dep
$execute store result score #dep mr.data run data get storage mineraft:grid edge."n/$(x)/$(y)/$(z3)"{tx:$(x),tz:$(z)}.id
execute if score #dep mr.data matches 1.. run function mineraft:structure/break/tag_dep
$execute store result score #dep mr.data run data get storage mineraft:grid edge."w/$(x3)/$(y)/$(z)"{tx:$(x),tz:$(z)}.id
execute if score #dep mr.data matches 1.. run function mineraft:structure/break/tag_dep
