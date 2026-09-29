data modify storage mineraft:registry palette set value {\
    floor_water: {\
        b: "minecraft:petrified_oak_slab[type=top,waterlogged=true]",\
        r: "minecraft:water",\
        rep: "#mineraft:collision/floor"\
    },\
    floor: {\
        b: "minecraft:petrified_oak_slab[type=top]",\
        r: "minecraft:air",\
        rep: "#mineraft:collision/floor"\
    },\
    full: {b: "minecraft:barrier", r: "minecraft:air", rep: "#mineraft:collision/full"},\
    planter: {\
        b: "minecraft:end_portal_frame[eye=false]",\
        r: "minecraft:air",\
        rep: "#mineraft:collision/full"\
    },\
    post: {\
        b: "minecraft:waxed_oxidized_copper_bars",\
        r: "minecraft:air",\
        rep: "#mineraft:collision/panel"\
    },\
    panel: {\
        b: "minecraft:iron_trapdoor[open=true,powered=false]",\
        r: "minecraft:air",\
        rep: "#mineraft:collision/panel"\
    },\
    mast: {\
        b: "minecraft:waxed_oxidized_lightning_rod[facing=up]",\
        r: "minecraft:air",\
        rep: "#mineraft:collision/full"\
    },\
    stairs: {b: "minecraft:purpur_stairs", r: "minecraft:air", rep: "#mineraft:collision/full"},\
    campfire: {b: "minecraft:campfire[lit=false]", r: "minecraft:air", rep: "#mineraft:collision/full"},\
    water: {b: "minecraft:water", r: "minecraft:water", rep: "#mineraft:collision/water"}\
}
