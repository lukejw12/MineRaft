data modify storage mineraft:registry structure.water_purifier set value {\
    anchor: "cell",\
    h: 1,\
    yaw: 180,\
    footprint: [[0, 0], [-1, 0]],\
    claims: {cells: 1b},\
    model: "raft_structures:basic/classic_water_purifier/empty",\
    state_model: "raft_structures:basic/classic_water_purifier",\
    parts: [\
        {at: [0.0, 0.5, 0.0], t: [0.2f, 0.01f, 0f]},\
        {at: [-0.05, 0.62, -0.08], model: "minecraft:air", norot: 1b, tags: ["mr.p.fuel"]}\
    ],\
    hitboxes: [{at: [0.0, 0.0, 0.0], w: 1.05, h: 1.5}, {at: [-1.0, 0.0, 0.0], w: 1.05, h: 1.5}],\
    blocks: [{at: [0, 0, 0], k: "full"}, {at: [-1, 0, 0], k: "full"}],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/water_purifier/spawn",\
        interact: "mineraft:structure/water_purifier/interact",\
        tick: "mineraft:structure/water_purifier/tick",\
        attack: "mineraft:structure/common/attack_break"\
    },\
    variants: {simple: {}},\
    type: "water_purifier"\
}
