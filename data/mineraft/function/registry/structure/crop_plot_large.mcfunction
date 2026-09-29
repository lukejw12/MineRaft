data modify storage mineraft:registry structure.crop_plot_large set value {\
    anchor: "tile_center",\
    h: 5,\
    yaw: 0,\
    footprint: [[-1, -1], [0, -1], [1, -1], [-1, 0], [0, 0], [1, 0], [-1, 1], [0, 1], [1, 1]],\
    claims: {cells: 1b},\
    model: "mineraft:structures/crop_plots/large/empty/basic_crop_plot",\
    plot: "basic_crop_plot",\
    parts: [\
        {at: [0.0, 0.51, 0.0], mode: "ground", norot: 1b},\
        {at: [0.0, 0.6975, 0.0], mode: "fixed", model: "minecraft:air", norot: 1b, tags: ["mr.p.tree"]}\
    ],\
    hitboxes: [{at: [0.0, 0.0, 0.0], w: 3.02, h: 5.0}],\
    blocks: [\
        {at: [-1, 0, -1], k: "planter"},\
        {at: [0, 0, -1], k: "planter"},\
        {at: [1, 0, -1], k: "planter"},\
        {at: [-1, 0, 0], k: "planter"},\
        {at: [0, 0, 0], k: "planter"},\
        {at: [1, 0, 0], k: "planter"},\
        {at: [-1, 0, 1], k: "planter"},\
        {at: [0, 0, 1], k: "planter"},\
        {at: [1, 0, 1], k: "planter"}\
    ],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/crop_plot_large/spawn",\
        interact: "mineraft:structure/crop_plot_large/interact",\
        attack: "mineraft:structure/crop_plot_large/attack",\
        tick: "mineraft:structure/crop_plot_large/tick"\
    },\
    variants: {basic: {}},\
    type: "crop_plot_large"\
}
