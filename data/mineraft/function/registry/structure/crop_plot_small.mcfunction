data modify storage mineraft:registry structure.crop_plot_small set value {\
    anchor: "cell",\
    h: 1,\
    yaw: 180,\
    footprint: [[0, 0], [-1, 0]],\
    claims: {cells: 1b},\
    model: "raft_structures:basic/crop_plot/small_dry",\
    plot: "raft_structures:basic/crop_plot/small",\
    parts: [\
        {at: [-0.5, 0.5, 0.0]},\
        {\
            at: [-0.125, 1.1, -0.094],\
            s: [0.7f, 0.7f, 0.7f],\
            model: "minecraft:air",\
            norot: 1b,\
            tags: ["mr.p.crop", "mr.crop_small"]\
        },\
        {\
            at: [-0.875, 1.1, -0.094],\
            s: [0.7f, 0.7f, 0.7f],\
            model: "minecraft:air",\
            norot: 1b,\
            tags: ["mr.p.crop", "mr.crop_small"]\
        }\
    ],\
    hitboxes: [{at: [0.0, 0.0, 0.0], w: 1.05, h: 1.05}, {at: [-1.0, 0.0, 0.0], w: 1.05, h: 1.05}],\
    blocks: [{at: [0, 0, 0], k: "planter"}, {at: [-1, 0, 0], k: "planter"}],\
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
            footprint: [[1, 0], [0, 0], [-1, 0]],\
            parts: [\
                {at: [0.0, 0.5, 0.0], s: [1.5f, 1f, 1f]},\
                {\
                    at: [0.75, 1.1, -0.094],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [0.0, 1.1, -0.094],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                },\
                {\
                    at: [-0.75, 1.1, -0.094],\
                    s: [0.7f, 0.7f, 0.7f],\
                    model: "minecraft:air",\
                    norot: 1b,\
                    tags: ["mr.p.crop", "mr.crop_small"]\
                }\
            ],\
            hitboxes: [\
                {at: [1.0, 0.0, 0.0], w: 1.05, h: 1.05},\
                {at: [0.0, 0.0, 0.0], w: 1.05, h: 1.05},\
                {at: [-1.0, 0.0, 0.0], w: 1.05, h: 1.05}\
            ],\
            blocks: [{at: [1, 0, 0], k: "planter"}, {at: [0, 0, 0], k: "planter"}, {at: [-1, 0, 0], k: "planter"}]\
        }\
    },\
    type: "crop_plot_small"\
}
