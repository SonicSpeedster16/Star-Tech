#Name: compat.zs
#Author: SonicSpeedster16
#Description: Changes to improve compatability between mods
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;

print("---- Initializing compat.zs ----");

# Casting blocks of cobalt shouldn't produce Chisel blocks
mods.tconstruct.Casting.removeBasinRecipe(<chisel:blockcobalt>, <liquid:cobalt>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

# Add Pam's HarvestCraft support to reactors from Industrial Foregoing
for item in <ore:listAllmeatraw>.items {
           ProteinReactor.add(item);
}
for item in <ore:listAllfishraw>.items {
           ProteinReactor.add(item);
}
for seed in <ore:listAllseed>.items {
           BioReactor.add(seed);
}
for veggie in <ore:listAllveggie>.items {
             BioReactor.add(veggie);
}
for fruit in <ore:listAllfruit>.items {
            BioReactor.add(fruit);
}

# Add compat for additional fuels to the Tinkers Smeltery
<liquid:sulfuricacid>.definition.temperature = 1500;
<liquid:astralsorcery.liquidstarlight>.definition.temperature = 2500;
<liquid:pyrotheum>.definition.temperature = 4000;
mods.tconstruct.Fuel.registerFuel(<liquid:sulfuricacid> * 25, 400);
mods.tconstruct.Fuel.registerFuel(<liquid:astralsorcery.liquidstarlight> * 25, 600);
mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 25, 400);

# Add Certus Quartz compat to the Actually Additions Crusher
mods.actuallyadditions.Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>);
mods.actuallyadditions.Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>);

# Add processing recipes for Dimensional Shard Ore
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:0>, 0.7);
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:1>, 0.7);
furnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:2>, 0.7);
mods.actuallyadditions.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>);
mods.actuallyadditions.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>);
mods.actuallyadditions.Crusher.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>);
mods.extrautils2.Crusher.add(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>);
mods.extrautils2.Crusher.add(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>);
mods.extrautils2.Crusher.add(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>);
mods.thermalexpansion.Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:0>, 4000);
mods.thermalexpansion.Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:1>, 4000);
mods.thermalexpansion.Pulverizer.addRecipe(<rftools:dimensional_shard> * 3, <rftools:dimensional_shard_ore:2>, 4000);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:0>, 2000);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:1>, 2000);
mods.thermalexpansion.RedstoneFurnace.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:2>, 2000);
mods.astralsorcery.StarlightInfusion.addInfusion(<rftools:dimensional_shard_ore:0>, <rftools:dimensional_shard> * 3, true, 0.1, 200);
mods.astralsorcery.StarlightInfusion.addInfusion(<rftools:dimensional_shard_ore:1>, <rftools:dimensional_shard> * 3, true, 0.1, 200);
mods.astralsorcery.StarlightInfusion.addInfusion(<rftools:dimensional_shard_ore:2>, <rftools:dimensional_shard> * 3, true, 0.1, 200);

# The Mekanism Purification Chamber should also be able to process ores from Galacticraft and More Planets
mods.mekanism.purification.addRecipe(<galacticraftplanets:mars:3>, <gas:oxygen>, <mekanism:clump>*3); /* Iron */
mods.mekanism.purification.addRecipe(<galacticraftplanets:asteroids_block:5>, <gas:oxygen>, <mekanism:clump>*3); /* Iron */
mods.mekanism.purification.addRecipe(<moreplanets:chalos_iron_ore>, <gas:oxygen>, <mekanism:clump>*3); /* Iron */
mods.mekanism.purification.addRecipe(<moreplanets:koentus_iron_ore>, <gas:oxygen>, <mekanism:clump>*3); /* Iron */
mods.mekanism.purification.addRecipe(<moreplanets:infected_iron_ore>, <gas:oxygen>, <mekanism:clump>*3); /* Iron */
mods.mekanism.purification.addRecipe(<galacticraftplanets:mars>, <gas:oxygen>, <mekanism:clump:3>*3); /* Copper */
mods.mekanism.purification.addRecipe(<galacticraftplanets:venus:7>, <gas:oxygen>, <mekanism:clump:3>*3); /* Copper */
mods.mekanism.purification.addRecipe(<moreplanets:chalos_copper_ore>, <gas:oxygen>, <mekanism:clump:3>*3); /* Copper */
mods.mekanism.purification.addRecipe(<moreplanets:koentus_copper_ore>, <gas:oxygen>, <mekanism:clump:3>*3); /* Copper */
mods.mekanism.purification.addRecipe(<moreplanets:infected_copper_ore>, <gas:oxygen>, <mekanism:clump:3>*3); /* Copper */
mods.mekanism.purification.addRecipe(<moreplanets:diona_copper_ore>, <gas:oxygen>, <mekanism:clump:3>*3); /* Copper */
mods.mekanism.purification.addRecipe(<galacticraftplanets:mars:1>, <gas:oxygen>, <mekanism:clump:4>*3); /* Tin */
mods.mekanism.purification.addRecipe(<galacticraftplanets:venus:11>, <gas:oxygen>, <mekanism:clump:4>*3); /* Tin */
mods.mekanism.purification.addRecipe(<moreplanets:chalos_tin_ore>, <gas:oxygen>, <mekanism:clump:4>*3); /* Tin */
mods.mekanism.purification.addRecipe(<moreplanets:koentus_tin_ore>, <gas:oxygen>, <mekanism:clump:4>*3); /* Tin */
mods.mekanism.purification.addRecipe(<moreplanets:infected_tin_ore>, <gas:oxygen>, <mekanism:clump:4>*3); /* Tin */
mods.mekanism.purification.addRecipe(<moreplanets:diona_tin_ore>, <gas:oxygen>, <mekanism:clump:4>*3); /* Tin */
mods.mekanism.purification.addRecipe(<moreplanets:infected_gold_ore>, <gas:oxygen>, <mekanism:clump:1>*3); /* Gold */
mods.mekanism.purification.addRecipe(<galacticraftplanets:venus:8>, <gas:oxygen>, <mekanism:clump:6>*3); /* Galena */
# Same goes for the Chemical Injection Chamber
mods.mekanism.chemical.injection.addRecipe(<galacticraftplanets:mars:3>, <gas:hydrogenchloride>, <mekanism:shard>*4); /* Iron */
mods.mekanism.chemical.injection.addRecipe(<galacticraftplanets:asteroids_block:5>, <gas:hydrogenchloride>, <mekanism:shard>*4); /* Iron */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:chalos_iron_ore>, <gas:hydrogenchloride>, <mekanism:shard>*4); /* Iron */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:koentus_iron_ore>, <gas:hydrogenchloride>, <mekanism:shard>*4); /* Iron */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:infected_iron_ore>, <gas:hydrogenchloride>, <mekanism:shard>*4); /* Iron */
mods.mekanism.chemical.injection.addRecipe(<galacticraftplanets:mars>, <gas:hydrogenchloride>, <mekanism:shard:3>*4); /* Copper */
mods.mekanism.chemical.injection.addRecipe(<galacticraftplanets:venus:7>, <gas:hydrogenchloride>, <mekanism:shard:3>*4); /* Copper */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:chalos_copper_ore>, <gas:hydrogenchloride>, <mekanism:shard:3>*4); /* Copper */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:koentus_copper_ore>, <gas:hydrogenchloride>, <mekanism:shard:3>*4); /* Copper */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:infected_copper_ore>, <gas:hydrogenchloride>, <mekanism:shard:3>*4); /* Copper */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:diona_copper_ore>, <gas:hydrogenchloride>, <mekanism:shard:3>*4); /* Copper */
mods.mekanism.chemical.injection.addRecipe(<galacticraftplanets:mars:1>, <gas:hydrogenchloride>, <mekanism:shard:4>*4); /* Tin */
mods.mekanism.chemical.injection.addRecipe(<galacticraftplanets:venus:11>, <gas:hydrogenchloride>, <mekanism:shard:4>*4); /* Tin */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:chalos_tin_ore>, <gas:hydrogenchloride>, <mekanism:shard:4>*4); /* Tin */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:koentus_tin_ore>, <gas:hydrogenchloride>, <mekanism:shard:4>*4); /* Tin */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:infected_tin_ore>, <gas:hydrogenchloride>, <mekanism:shard:4>*4); /* Tin */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:diona_tin_ore>, <gas:hydrogenchloride>, <mekanism:shard:4>*4); /* Tin */
mods.mekanism.chemical.injection.addRecipe(<moreplanets:infected_gold_ore>, <gas:hydrogenchloride>, <mekanism:shard:1>*4); /* Gold */
mods.mekanism.chemical.injection.addRecipe(<galacticraftplanets:venus:8>, <gas:hydrogenchloride>, <mekanism:shard:6>*4); /* Galena */

# The Mekanism Enrichment Chamber should be able to process all Quartz Ore
mods.mekanism.enrichment.addRecipe(<galacticraftplanets:venus:9>, <minecraft:quartz> * 6);
mods.mekanism.enrichment.addRecipe(<nex:quartz_ore>, <minecraft:quartz> * 6);
mods.mekanism.enrichment.addRecipe(<nex:quartz_ore:1>, <minecraft:quartz> * 6);
mods.mekanism.enrichment.addRecipe(<nex:quartz_ore:2>, <minecraft:quartz> * 6);
mods.mekanism.enrichment.addRecipe(<nex:quartz_ore:3>, <minecraft:quartz> * 6);

# Starmetal compat for Mekanism smelter
mods.mekanism.smelter.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:1>);

print("---- Initialized compat.zs ----");
