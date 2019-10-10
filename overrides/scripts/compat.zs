#Name: compat.zs
#Author: SonicSpeedster16
#Description: Changes to improve compatability between mods
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

import mods.industrialforegoing.BioReactor;
import mods.industrialforegoing.ProteinReactor;

print("==== Initializing compat.zs ====");

# Add additional materials that can be used as furnace fuel
furnace.setFuel(<thermalfoundation:material:771>, 300); /* Sulfur */
furnace.setFuel(<minecraft:fire_charge>, 1200); /* Fire Charge */

# Add compat for additional fuels to be used in the Tinkers Smeltery
<liquid:sulfuricacid>.definition.temperature = 1500;
<liquid:astralsorcery.liquidstarlight>.definition.temperature = 2500;
<liquid:pyrotheum>.definition.temperature = 4000;
mods.tconstruct.Fuel.registerFuel(<liquid:sulfuricacid> * 25, 400);
mods.tconstruct.Fuel.registerFuel(<liquid:astralsorcery.liquidstarlight> * 25, 600);
mods.tconstruct.Fuel.registerFuel(<liquid:pyrotheum> * 25, 400);

# Adjust temperature needed to smelt Tritanium Ore in a Tinkers smeltery (to allow lava fuel to smelt it)
mods.tconstruct.Melting.removeRecipe(<liquid:molten_tritanium>);
mods.tconstruct.Melting.addRecipe(<liquid:molten_tritanium> * 288,<matteroverdrive:tritanium_ore>, 1250);

# Add Pam's HarvestCraft compat to Industrial Foregoing's reactors
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

# Add more gems that can be used in the Numistic Dynamo
mods.thermalexpansion.NumisticDynamo.addGemFuel(<appliedenergistics2:material:0>, 20000); /* Certus Quartz */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<appliedenergistics2:material:1>, 40000); /* Charged Certus Quartz */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<appliedenergistics2:material:10>, 40000); /* Pure Certus Quartz */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<actuallyadditions:item_misc:5>, 40000); /* Black Quartz */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<matteroverdrive:dilithium_crystal>, 50000); /* Dilithium */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<astralsorcery:itemcraftingcomponent:0>, 60000); /* Aquamarine */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<moreplanets:setrorium_shard>, 60000); /* Setrorium Shard */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<netherex:amethyst_crystal>, 600000); /* Nether Amethyst */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<extraplanets:tier5_items:8>, 1750000); /* Red Gem */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<extraplanets:tier7_items:7>, 1750000); /* White Gem */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<extraplanets:tier8_items:6>, 1750000); /* Blue Gem */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<extraplanets:tier11_items:0>, 2500000); /* Blue Diamond */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<extraplanets:tier11_items:1>, 2500000); /* Red Diamond */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<extraplanets:tier11_items:2>, 2500000); /* Purple Diamond */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<extraplanets:tier11_items:3>, 2500000); /* Yellow Diamond */
mods.thermalexpansion.NumisticDynamo.addGemFuel(<extraplanets:tier11_items:4>, 2500000); /* Green Diamond */
// Emeralds should produce more power than diamonds
mods.thermalexpansion.NumisticDynamo.removeGemFuel(<minecraft:emerald>);
mods.thermalexpansion.NumisticDynamo.addGemFuel(<minecraft:emerald>, 1500000);

# Add Certus Quartz compat to the Vanilla furnace and Actually Additions Crusher
furnace.addRecipe(<appliedenergistics2:material:0>, <appliedenergistics2:quartz_ore>, 1.0);
furnace.addRecipe(<appliedenergistics2:material:1>, <appliedenergistics2:charged_quartz_ore>, 1.0);
mods.actuallyadditions.Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>);
mods.actuallyadditions.Crusher.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material>);

# Add Fluix Crystal compat to the Actually Additions and Extra Utilities 2 Crusher
mods.actuallyadditions.Crusher.addRecipe(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>);
mods.extrautils2.Crusher.add(<appliedenergistics2:material:8>, <appliedenergistics2:material:7>);

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
mods.appliedenergistics2.Grinder.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:0>, 3);
mods.appliedenergistics2.Grinder.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:1>, 3);
mods.appliedenergistics2.Grinder.addRecipe(<rftools:dimensional_shard>, <rftools:dimensional_shard_ore:2>, 3);
mods.mekanism.enrichment.addRecipe(<rftools:dimensional_shard_ore:0>, <rftools:dimensional_shard> * 6);
mods.mekanism.enrichment.addRecipe(<rftools:dimensional_shard_ore:1>, <rftools:dimensional_shard> * 6);
mods.mekanism.enrichment.addRecipe(<rftools:dimensional_shard_ore:2>, <rftools:dimensional_shard> * 6);

# Add processing recipes for Magma Cream
mods.actuallyadditions.Crusher.addRecipe(<minecraft:magma_cream> * 4, <minecraft:magma>);
mods.extrautils2.Crusher.add(<minecraft:magma_cream> * 4, <minecraft:magma>);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:magma_cream> * 4, <minecraft:magma>, 3);
mods.mekanism.enrichment.addRecipe(<minecraft:magma>, <minecraft:magma_cream> * 4);

# Add processing recipes for various rods
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:blaze_powder> * 4, <minecraft:blaze_rod>, 3);
// Blizz
mods.actuallyadditions.Crusher.addRecipe(<thermalfoundation:material:2049> * 4, <thermalfoundation:material:2048>, <thermalfoundation:material:771>, 50);
mods.extrautils2.Crusher.add(<thermalfoundation:material:2049> * 4, <thermalfoundation:material:2048>);
mods.appliedenergistics2.Grinder.addRecipe(<thermalfoundation:material:2049> * 4, <thermalfoundation:material:2048>, 4);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:2048>, <thermalfoundation:material:2049> * 4);
// Blitz
mods.actuallyadditions.Crusher.addRecipe(<thermalfoundation:material:2051> * 4, <thermalfoundation:material:2050>);
mods.extrautils2.Crusher.add(<thermalfoundation:material:2051> * 4, <thermalfoundation:material:2050>);
mods.appliedenergistics2.Grinder.addRecipe(<thermalfoundation:material:2051> * 4, <thermalfoundation:material:2050>, 4);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:2050>, <thermalfoundation:material:2051> * 4);
// Basalz
mods.actuallyadditions.Crusher.addRecipe(<thermalfoundation:material:2053> * 4, <thermalfoundation:material:2052>);
mods.extrautils2.Crusher.add(<thermalfoundation:material:2053> * 4, <thermalfoundation:material:2052>);
mods.appliedenergistics2.Grinder.addRecipe(<thermalfoundation:material:2053> * 4, <thermalfoundation:material:2052>, 4);
mods.mekanism.enrichment.addRecipe(<thermalfoundation:material:2052>, <thermalfoundation:material:2053> * 4);
// Frost
mods.thermalexpansion.Pulverizer.addRecipe(<netherex:frost_powder> * 4, <netherex:frost_rod>, 4000);
mods.actuallyadditions.Crusher.addRecipe(<netherex:frost_powder> * 4, <netherex:frost_rod>);
mods.extrautils2.Crusher.add(<netherex:frost_powder> * 4, <netherex:frost_rod>);
mods.appliedenergistics2.Grinder.addRecipe(<netherex:frost_powder> * 4, <netherex:frost_rod>, 4);
mods.mekanism.enrichment.addRecipe(<netherex:frost_rod>, <netherex:frost_powder> * 4);

# Add additional processing recipes for Matter Overdrive ores
mods.mekanism.smelter.addRecipe(<matteroverdrive:tritanium_ore>, <matteroverdrive:tritanium_ingot>); /* Tritanium Ore */
mods.mekanism.smelter.addRecipe(<matteroverdrive:tritanium_dust>, <matteroverdrive:tritanium_ingot>); /* Tritanium Dust */
mods.mekanism.enrichment.addRecipe(<matteroverdrive:dilithium_ore>, <matteroverdrive:dilithium_crystal> * 4); /* Dilithium */
mods.mekanism.enrichment.addRecipe(<matteroverdrive:tritanium_ore>, <matteroverdrive:tritanium_dust> * 2); /* Tritanium */

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
// Same goes for the Chemical Injection Chamber
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

# The Mekanism Enrichment Chamber should be able to process all types of Quartz Ore
mods.mekanism.enrichment.addRecipe(<netherex:quartz_ore>, <minecraft:quartz> * 6); /* Nether Quartz */
mods.mekanism.enrichment.addRecipe(<galacticraftplanets:venus:9>, <minecraft:quartz> * 6); /* Nether Quartz */
mods.mekanism.enrichment.addRecipe(<actuallyadditions:block_misc:3>, <actuallyadditions:item_misc:5> * 2); /* Black Quartz */

# The Mekanism Enrichment Chamber should be able to process all types of Diamond Ores
mods.mekanism.enrichment.addRecipe(<moreplanets:infected_diamond_ore>, <minecraft:diamond> * 2);
mods.mekanism.enrichment.addRecipe(<extraplanets:kepler22b:6>, <extraplanets:tier11_items:0> * 2); /* Blue Diamond */
mods.mekanism.enrichment.addRecipe(<extraplanets:kepler22b:7>, <extraplanets:tier11_items:1> * 2); /* Red Diamond */
mods.mekanism.enrichment.addRecipe(<extraplanets:kepler22b:8>, <extraplanets:tier11_items:2> * 2); /* Purple Diamond */
mods.mekanism.enrichment.addRecipe(<extraplanets:kepler22b:9>, <extraplanets:tier11_items:3> * 2); /* Yellow Diamond */
mods.mekanism.enrichment.addRecipe(<extraplanets:kepler22b:10>, <extraplanets:tier11_items:4> * 2); /* Green Diamond */

# Add compat for additional ores/items to Mekanism processing machines
mods.mekanism.enrichment.addRecipe(<tconstruct:ore:0>, <enderio:item_material:31> * 2); /* Tinkers Cobalt */
mods.mekanism.enrichment.addRecipe(<tconstruct:ore:1>, <enderio:item_material:30> * 2); /* Tinkers Ardite */
mods.mekanism.enrichment.addRecipe(<moreplanets:infected_emerald_ore>, <minecraft:emerald> * 2); /* Infected Emerald Ore */
mods.mekanism.smelter.addRecipe(<astralsorcery:blockcustomore:1>, <astralsorcery:itemcraftingcomponent:1>); /* Starmetal Ore */
mods.mekanism.smelter.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:1>); /* StarDust */
mods.mekanism.smelter.addRecipe(<aroma1997sdimension:miningore:0>, <minecraft:slime_ball>); /* Sticky Ore */
mods.mekanism.smelter.addRecipe(<aroma1997sdimension:miningore:1>, <minecraft:clay_ball> * 4); /* Clay Ore */
mods.mekanism.enrichment.addRecipe(<extraplanets:jupiter:11>, <extraplanets:tier5_items:8> * 2); /* Red Gem */
mods.mekanism.enrichment.addRecipe(<extraplanets:uranus:7>, <extraplanets:tier7_items:7> * 2); /* White Gem */
mods.mekanism.enrichment.addRecipe(<extraplanets:neptune:10>, <extraplanets:tier8_items:6> * 2); /* Blue Gem */

# Add compat for Ender IO materials to machines from other mods
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 2000); /* Grains of Prescience */
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:35>, <enderio:item_material:15>, 2000); /* Grains of Vibrancy */
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 2000); /* Grains of Piezallity */
mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 2000); /* Grains of the End */
mods.extrautils2.Crusher.add(<enderio:item_material:34>, <enderio:item_material:19>); /* Grains of Prescience */
mods.extrautils2.Crusher.add(<enderio:item_material:35>, <enderio:item_material:15>); /* Grains of Vibrancy */
mods.extrautils2.Crusher.add(<enderio:item_material:36>, <enderio:item_material:14>); /* Grains of Piezallity */
mods.extrautils2.Crusher.add(<enderio:item_material:37>, <enderio:item_material:16>); /* Grains of the End */
mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>); /* Grains of Prescience */
mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:35>, <enderio:item_material:15>); /* Grains of Vibrancy */
mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>); /* Grains of Piezallity */
mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>); /* Grains of the End */
mods.mekanism.crusher.addRecipe(<enderio:item_material:19>, <enderio:item_material:34>); /* Grains of Prescience */
mods.mekanism.crusher.addRecipe(<enderio:item_material:15>, <enderio:item_material:35>); /* Grains of Vibrancy */
mods.mekanism.crusher.addRecipe(<enderio:item_material:14>, <enderio:item_material:36>); /* Grains of Piezallity */
mods.mekanism.crusher.addRecipe(<enderio:item_material:16>, <enderio:item_material:37>); /* Grains of the End */
mods.appliedenergistics2.Grinder.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 4); /* Grains of Prescience */
mods.appliedenergistics2.Grinder.addRecipe(<enderio:item_material:35>, <enderio:item_material:15>, 4); /* Grains of Vibrancy */
mods.appliedenergistics2.Grinder.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 4); /* Grains of Piezallity */
mods.appliedenergistics2.Grinder.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 4); /* Grains of the End */

# Extra Utilities 2 Resonator should also be able to make Red Coal from Infected Coal/Charcoal
mods.extrautils2.Resonator.add(<extrautils2:ingredients:4>, <moreplanets:infected_coal>, 1600);
mods.extrautils2.Resonator.add(<extrautils2:ingredients:4>, <moreplanets:infected_charcoal>, 1600);

# Diamond Horse Armor should be grindable in more than the Thermal Pulverizer
mods.actuallyadditions.Crusher.addRecipe(<minecraft:diamond> * 2, <minecraft:diamond_horse_armor>);
mods.extrautils2.Crusher.add(<minecraft:diamond> * 2, <minecraft:diamond_horse_armor>);
mods.mekanism.crusher.addRecipe(<minecraft:diamond_horse_armor>, <minecraft:diamond> * 2);

print("==== Initialized compat.zs ====");
