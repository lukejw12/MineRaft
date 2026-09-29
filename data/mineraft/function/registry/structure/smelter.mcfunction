data modify storage mineraft:registry structure.smelter set value {\
    anchor: "cell",\
    h: 2,\
    yaw: 180,\
    footprint: [[0, 0], [-1, 0], [0, 1], [-1, 1]],\
    claims: {cells: 1b},\
    model: "raft_structures:smelter",\
    state_model: "smelter",\
    parts: [\
        {at: [-0.5, 0.5, 0.5], mode: "none", t: [0f, 0.01f, 0f]},\
        {\
            at: [-0.5, 0.5, 0.5],\
            mode: "none",\
            t: [0f, 0.01f, 0f],\
            model: "minecraft:air",\
            tags: ["mr.p.content"]\
        },\
        {\
            at: [-0.5, 0.5, 0.5],\
            mode: "none",\
            t: [0f, 0.1975f, 0f],\
            model: "minecraft:air",\
            tags: ["mr.p.fuel"]\
        }\
    ],\
    hitboxes: [{at: [-0.5, 0.0, 0.5], w: 2.05, h: 1.25}],\
    blocks: [\
        {at: [0, 0, 0], k: "full"},\
        {at: [-1, 0, 0], k: "full"},\
        {at: [0, 0, 1], k: "full"},\
        {at: [-1, 0, 1], k: "full"}\
    ],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/smelter/spawn",\
        interact: "mineraft:structure/smelter/interact",\
        tick: "mineraft:structure/smelter/tick",\
        attack: "mineraft:structure/common/attack_break"\
    },\
    variants: {simple: {}},\
    type: "smelter"\
}
