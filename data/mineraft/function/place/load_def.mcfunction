$data modify storage mineraft:tmp pl.def set from storage mineraft:registry structure.$(type)
execute unless data storage mineraft:tmp pl.def run return fail
$data modify storage mineraft:tmp pl.def merge from storage mineraft:registry structure.$(type).variants.$(variant)
data remove storage mineraft:tmp pl.def.variants
$data modify storage mineraft:tmp pl.type set value "$(type)"
$data modify storage mineraft:tmp pl.variant set value "$(variant)"
