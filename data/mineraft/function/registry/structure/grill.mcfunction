data modify storage mineraft:registry structure.grill set value {\
    anchor: "cell",\
    h: 1,\
    yaw: 180,\
    footprint: [[0, 0]],\
    claims: {cells: 1b},\
    model: "mineraft:structures/grills/simple_grill/simple_grill",\
    parts: [\
        {at: [0.0, 0.5, 0.0], mode: "ground", t: [0f, 0.01f, 0f]},\
        {at: [0.0, 0.575, 0.0], mode: "ground", model: "minecraft:air", norot: 1b, tags: ["mr.p.fuel"]}\
    ],\
    hitboxes: [{at: [0.0, 0.0, 0.0], w: 1.05, h: 1.05}],\
    blocks: [{at: [0, 0, 0], k: "full"}],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/grill/spawn",\
        interact: "mineraft:structure/grill/interact",\
        tick: "mineraft:structure/grill/tick",\
        attack: "mineraft:structure/common/attack_break"\
    },\
    variants: {simple: {}},\
    type: "grill"\
}
