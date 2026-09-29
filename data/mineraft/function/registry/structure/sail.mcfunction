data modify storage mineraft:registry structure.sail set value {\
    anchor: "cell",\
    h: 5,\
    yaw: 0,\
    footprint: [[0, 0]],\
    claims: {cells: 1b},\
    model: "raft_structures:sail_base",\
    parts: [\
        {at: [0.0, 1.5, 0.0], t: [0f, 2f, 0f], tags: ["Sail_base"]},\
        {\
            at: [0.0, 1.5, 0.0],\
            t: [0f, 2f, 0f],\
            model: "raft_structures:sail_mast",\
            tags: ["mr.p.sail_part", "Sail_mast"]\
        },\
        {\
            at: [0.0, 1.5, 0.0],\
            t: [0f, 4.125f, 0f],\
            model: "raft_structures:sail_yard",\
            tags: ["mr.p.sail_part", "Sail_yard"]\
        },\
        {\
            at: [0.0, 1.5, 0.0],\
            t: [0f, 2.76f, 0f],\
            s: [1f, 0.2857143f, 1f],\
            model: "raft_structures:sail_closed",\
            tags: ["mr.p.sail_part", "Sail"]\
        }\
    ],\
    hitboxes: [{at: [0.0, 0.0, 0.0], w: 1.0, h: 5.0}],\
    blocks: [\
        {at: [0, 0, 0], k: "mast"},\
        {at: [0, 1, 0], k: "mast"},\
        {at: [0, 2, 0], k: "mast"},\
        {at: [0, 3, 0], k: "mast"},\
        {at: [0, 4, 0], k: "mast"}\
    ],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/sail/spawn",\
        interact: "mineraft:structure/sail/interact",\
        tick: "mineraft:structure/sail/tick",\
        attack: "mineraft:structure/sail/attack"\
    },\
    variants: {basic: {}},\
    type: "sail"\
}
