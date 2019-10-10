#Name: Chisel.zs
#Author: SonicSpeedster16
#Description: Add Chisel variations to various blocks
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

import mods.chisel.Carving.addVariation;

print("==== Initializing Chisel.zs ====");

# Marble
addVariation("marble", <extraplanets:decorative_blocks:0>);
addVariation("marblebricks", <extraplanets:decorative_blocks:1>);
addVariation("marbletiled", <extraplanets:decorative_blocks:6>);
addVariation("marbletiled", <extraplanets:decorative_blocks:7>);

# Sooty Marble
addVariation("sootymarble", <astralsorcery:blockblackmarble:0>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:1>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:2>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:3>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:4>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:5>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:6>);

# Basalt
addVariation("basalt", <netherex:basalt>);
addVariation("basalt", <netherex:smooth_basalt>);
addVariation("basalt", <netherex:basalt_brick>);
addVariation("basalt", <netherex:basalt_pillar>);

# Netherrack
addVariation("netherrack", <netherex:gloomy_netherrack>);
addVariation("netherrack", <netherex:lively_netherrack>);
addVariation("netherrack", <netherex:fiery_netherrack>);
addVariation("netherrack", <netherex:icy_netherrack>);

# Nether Brick
addVariation("netherbrick", <netherex:gloomy_nether_brick>);
addVariation("netherbrick", <netherex:lively_nether_brick>);
addVariation("netherbrick", <netherex:fiery_nether_brick>);
addVariation("netherbrick", <netherex:icy_nether_brick>);

# Twilight Forest
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:0>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:1>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:2>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:3>);
addVariation("castlebrickdoor", <twilightforest:castle_door:0>);
addVariation("castlebrickdoor", <twilightforest:castle_door:1>);
addVariation("castlebrickdoor", <twilightforest:castle_door:2>);
addVariation("castlebrickdoor", <twilightforest:castle_door:3>);

print("==== Initialized Chisel.zs ====");
