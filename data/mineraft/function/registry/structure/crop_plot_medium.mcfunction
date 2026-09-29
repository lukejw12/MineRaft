data modify storage mineraft:registry structure.crop_plot_medium set value {\
    anchor: "cell",\
    h: 1,\
    yaw: 180,\
    footprint: [[0, 0], [-1, 0], [0, 1], [-1, 1]],\
    claims: {cells: 1b},\
    model: "raft_structures:basic/crop_plot/medium_dry",\
    plot: "raft_structures:basic/crop_plot/medium",\
    parts: [\
        {at: [-0.5, 0.5, 0.5]},\
        {\
            at: [-0.5, 1.25, 0.5],\
            s: [1f, 1f, 1f],\
            model: "minecraft:air",\
            norot: 1b,\
            tags: ["mr.p.crop", "mr.crop_large"]\
        },\
        {\
            at: [-0.5, 1.1, 0.5],\
            s: [0.7f, 0.7f, 0.7f],\
            model: "minecraft:air",\
            norot: 1b,\
            tags: ["mr.p.crop", "mr.crop_small"]\
        },\
        {\
            at: [-0.125, 1.1, 0.125],\
            s: [0.7f, 0.7f, 0.7f],\
            model: "minecraft:air",\
            norot: 1b,\
            tags: ["mr.p.crop", "mr.crop_small"]\
        },\
        {\
            at: [-0.875, 1.1, 0.125],\
            s: [0.7f, 0.7f, 0.7f],\
            model: "minecraft:air",\
            norot: 1b,\
            tags: ["mr.p.crop", "mr.crop_small"]\
        },\
        {\
            at: [-0.125, 1.1, 0.875],\
            s: [0.7f, 0.7f, 0.7f],\
            model: "minecraft:air",\
            norot: 1b,\
            tags: ["mr.p.crop", "mr.crop_small"]\
        },\
        {\
            at: [-0.875, 1.1, 0.875],\
            s: [0.7f, 0.7f, 0.7f],\
            model: "minecraft:air",\
            norot: 1b,\
            tags: ["mr.p.crop", "mr.crop_small"]\
        }\
    ],\
    hitboxes: [{at: [-0.5, 0.0, 0.5], w: 2.05, h: 1.05}],\
    blocks: [\
        {at: [0, 0, 0], k: "planter"},\
        {at: [-1, 0, 0], k: "planter"},\
        {at: [0, 0, 1], k: "planter"},\
        {at: [-1, 0, 1], k: "planter"}\
    ],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/crop_plot/spawn",\
        interact: "mineraft:structure/crop_plot/interact",\
        tick: "mineraft:structure/crop_plot/tick",\
        attack: "mineraft:structure/common/attack_break"\
    },\
    variants: {\
        basic: {},\
        advanced: {\
            footprint: [[0, -1], [-1, -1], [0, 0], [-1, 0], [0, 1], [-1, 1]],\
            parts: [\
                {at: [-0.5, 0.5, 0.0], s: [1f, 1f, 1.5f]},\
                {\
                    at: [-0.5, 1.25, 0.0],\
                    s: [1f, 1f, 1f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_large"]\
                },\
                {\
                    at: [-0.125, 1.1, -0.75],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [-0.125, 1.1, 0.0],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [-0.125, 1.1, 0.75],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [-0.875, 1.1, -0.75],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [-0.875, 1.1, 0.0],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [-0.875, 1.1, 0.75],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [-0.5, 1.1, -0.375],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [-0.5, 1.1, 0.375],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                }\
            ],\
            hitboxes: [{at: [-0.5, 0.0, -0.5], w: 2.05, h: 1.05}, {at: [-0.5, 0.0, 0.5], w: 2.05, h: 1.05}],\
            blocks: [\
                {at: [0, 0, -1], k: "planter"},\
                {at: [-1, 0, -1], k: "planter"},\
                {at: [0, 0, 0], k: "planter"},\
                {at: [-1, 0, 0], k: "planter"},\
                {at: [0, 0, 1], k: "planter"},\
                {at: [-1, 0, 1], k: "planter"}\
            ]\
        }\
    },\
    type: "crop_plot_medium"\
}
