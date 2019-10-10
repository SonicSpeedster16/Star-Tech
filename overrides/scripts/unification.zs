#Name: unification.zs
#Author: SonicSpeedster16
#Description: Unify items, recipes, and machine outputs.
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing unification.zs ====");

# Unify machine outputs of Silicon Ore processing
mods.actuallyadditions.Crusher.removeRecipe(<galacticraftcore:basic_item:2>);
furnace.addRecipe(<galacticraftcore:basic_item:2>, <galacticraftplanets:venus:10>, 1.0);
furnace.addRecipe(<galacticraftcore:basic_item:2>, <galacticraftcore:basic_block_core:8>, 1.0);

# Unify machine outputs of Black Quartz processing
recipes.removeShapeless(<actuallyadditions:item_misc:5>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 1, <actuallyadditions:item_misc:5>);

# Unify Silicon
mods.mekanism.smelter.removeRecipe(<minecraft:quartz>);
mods.mekanism.smelter.addRecipe(<minecraft:quartz>, <galacticraftcore:basic_item:2>);

# Unify Pulverized Coal
mods.actuallyadditions.Crusher.removeRecipe(<actuallyadditions:item_dust:6>);
mods.actuallyadditions.Crusher.addRecipe(<thermalfoundation:material:768>, <minecraft:coal:0>);
mods.extrautils2.Crusher.add(<thermalfoundation:material:768>, <minecraft:coal:0>);

# Unify Pulverized Charcoal
mods.actuallyadditions.Crusher.addRecipe(<thermalfoundation:material:769>, <minecraft:coal:1>);
mods.extrautils2.Crusher.add(<thermalfoundation:material:769>, <minecraft:coal:1>);

# Standardize Frost Powder crafting recipe
recipes.removeShapeless(<netherex:frost_powder>);
recipes.addShapeless("Frost Powder_custom",
<netherex:frost_powder> * 2, [<netherex:frost_rod>]);

# Replace Forestry Bronze with Thermal Bronze
recipes.remove(<forestry:ingot_bronze>);
mods.forestry.Carpenter.addRecipe(<thermalfoundation:material:163> * 2, [[<forestry:broken_bronze_pickaxe>]], 30);
mods.forestry.Carpenter.addRecipe(<thermalfoundation:material:163> * 1, [[<forestry:broken_bronze_shovel>]], 30);

# Remove recipes in order to provide unification
recipes.remove(<galacticraftcore:food:6>); /* Ground Beef */
mods.thermalexpansion.Pulverizer.removeRecipe(<minecraft:beef>); /* Ground Beef */
recipes.removeByRecipeName("thermalfoundation:gem_6"); /* Sapphire */

# Shapelessly convert items to the correct type
recipes.addShapeless("sapphire_conversion",
<iceandfire:sapphire_gem>, [<biomesoplenty:gem:6>]);
recipes.addShapeless("silver_nugget_conversion",
<thermalfoundation:material:194>, [<iceandfire:silver_nugget>]);
recipes.addShapeless("ground_beef_conversion",
<galacticraftcore:food:6>, [<harvestcraft:groundbeefitem>]);

# Remove UniDict's Gear and Plate Unification to prevent conflicts
mods.unidict.removalByKind.get("Crafting").remove("gear");
mods.unidict.removalByKind.get("Crafting").remove("plate");

/*~~~~~~~~~~~~~~~
Tinkers' Contruct
~~~~~~~~~~~~~~~~*/
# Casting Tinkers Cobalt blocks shouldn't produce Chisel Cobalt Blocks
mods.tconstruct.Casting.removeBasinRecipe(<chisel:blockcobalt>, <liquid:cobalt>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

# Add missing recipes for creating Gear Casts with Aluminum Brass
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <thermalfoundation:material:23>, <liquid:alubrass>, 144, true, 40); /* Stone Gear */
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <enderio:item_material:10>, <liquid:alubrass>, 144, true, 40); /* Stone Compound Gear */
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <pneumaticcraft:compressed_iron_gear>, <liquid:alubrass>, 144, true, 40); /* Compressed Iron Gear */
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:4>, <pneumaticcraft:compressed_iron_gear>, <liquid:gold>, 288, true, 60); /* Compressed Iron Gear */

# Tritanium plates should also be usable for creating Plate Casts
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <matteroverdrive:tritanium_plate>, <liquid:alubrass>, 144, true, 40);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:cast_custom:3>, <matteroverdrive:tritanium_plate>, <liquid:gold>, 288, true, 60);

/*~~~~~~~~~~~~~~~~~~~~~
Standardize Rod recipes
~~~~~~~~~~~~~~~~~~~~~~*/
recipes.remove(<tconstruct:stone_stick>);
recipes.addShaped("Stone Rod",
<tconstruct:stone_stick>, [
  [null, null, <ore:cobblestone>],
  [null, <ore:cobblestone>, null],
  [<ore:cobblestone>, null, null]
]);

recipes.remove(<galacticraftplanets:item_basic_mars:1>);
recipes.addShaped("Desh Rod",
<galacticraftplanets:item_basic_mars:1>, [
  [null, null, <ore:ingotDesh>],
  [null, <ore:ingotDesh>, null],
  [<ore:ingotDesh>, null, null]
]);

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Standardize and Unify Gear recipes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
# Wood
recipes.removeByRecipeName("enderio:gear_ae2_messes_things_up");
recipes.removeByRecipeName("enderio:gear_just_to_be_sure");
recipes.removeByRecipeName("enderio:gear_better_save_than_sorry");

# Iron
recipes.addShaped("Iron Gear_crafting",
<thermalfoundation:material:24>, [
  [null, <ore:ingotIron>, null],
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
  [null, <ore:ingotIron>, null]
]);

# Gold
recipes.addShaped("Gold Gear_crafting",
<thermalfoundation:material:25>, [
  [null, <ore:ingotGold>, null],
  [<ore:ingotGold>, <ore:ingotIron>, <ore:ingotGold>],
  [null, <ore:ingotGold>, null]
]);

# Diamond
recipes.remove(<thermalfoundation:material:26>);
recipes.addShaped("Diamond Gear_crafting",
<thermalfoundation:material:26>, [
  [null, <ore:gemDiamond>, null],
  [<ore:gemDiamond>, <ore:ingotIron>, <ore:gemDiamond>],
  [null, <ore:gemDiamond>, null]
]);

# Emerald
recipes.remove(<thermalfoundation:material:27>);
recipes.addShaped("Emerald Gear_crafting",
<thermalfoundation:material:27>, [
  [null, <ore:gemEmerald>, null],
  [<ore:gemEmerald>, <ore:ingotIron>, <ore:gemEmerald>],
  [null, <ore:gemEmerald>, null]
]);

# Copper
recipes.addShaped("Copper Gear_crafting",
<thermalfoundation:material:256>, [
  [null, <ore:ingotCopper>, null],
  [<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>],
  [null, <ore:ingotCopper>, null]
]);

# Tin
recipes.addShaped("Tin Gear_crafting",
<thermalfoundation:material:257>, [
  [null, <ore:ingotTin>, null],
  [<ore:ingotTin>, <ore:ingotIron>, <ore:ingotTin>],
  [null, <ore:ingotTin>, null]
]);

# Silver
recipes.addShaped("Silver Gear_crafting",
<thermalfoundation:material:258>, [
  [null, <ore:ingotSilver>, null],
  [<ore:ingotSilver>, <ore:ingotIron>, <ore:ingotSilver>],
  [null, <ore:ingotSilver>, null]
]);

# Lead
recipes.addShaped("Lead Gear_crafting",
<thermalfoundation:material:259>, [
  [null, <ore:ingotLead>, null],
  [<ore:ingotLead>, <ore:ingotIron>, <ore:ingotLead>],
  [null, <ore:ingotLead>, null]
]);

# Aluminum
recipes.addShaped("Aluminum Gear_crafting",
<thermalfoundation:material:260>, [
  [null, <ore:ingotAluminum>, null],
  [<ore:ingotAluminum>, <ore:ingotIron>, <ore:ingotAluminum>],
  [null, <ore:ingotAluminum>, null]
]);

# Nickel
recipes.addShaped("Nickel Gear_crafting",
<thermalfoundation:material:261>, [
  [null, <ore:ingotNickel>, null],
  [<ore:ingotNickel>, <ore:ingotIron>, <ore:ingotNickel>],
  [null, <ore:ingotNickel>, null]
]);

# Platinum
recipes.addShaped("Platinum Gear_crafting",
<thermalfoundation:material:262>, [
  [null, <ore:ingotPlatinum>, null],
  [<ore:ingotPlatinum>, <ore:ingotIron>, <ore:ingotPlatinum>],
  [null, <ore:ingotPlatinum>, null]
]);

# Iridium
recipes.addShaped("Iridium Gear_crafting",
<thermalfoundation:material:263>, [
  [null, <ore:ingotIridium>, null],
  [<ore:ingotIridium>, <ore:ingotIron>, <ore:ingotIridium>],
  [null, <ore:ingotIridium>, null]
]);

# Mana Infused
recipes.addShaped("Mana Infused Gear_crafting",
<thermalfoundation:material:264>, [
  [null, <ore:ingotMithril>, null],
  [<ore:ingotMithril>, <ore:ingotIron>, <ore:ingotMithril>],
  [null, <ore:ingotMithril>, null]
]);

# Steel
recipes.addShaped("Steel Gear_crafting",
<thermalfoundation:material:288>, [
  [null, <ore:ingotSteel>, null],
  [<ore:ingotSteel>, <ore:ingotIron>, <ore:ingotSteel>],
  [null, <ore:ingotSteel>, null]
]);

# Electrum
recipes.addShaped("Electrum Gear_crafting",
<thermalfoundation:material:289>, [
  [null, <ore:ingotElectrum>, null],
  [<ore:ingotElectrum>, <ore:ingotIron>, <ore:ingotElectrum>],
  [null, <ore:ingotElectrum>, null]
]);

# Invar
recipes.addShaped("Invar Gear_crafting",
<thermalfoundation:material:290>, [
  [null, <ore:ingotInvar>, null],
  [<ore:ingotInvar>, <ore:ingotIron>, <ore:ingotInvar>],
  [null, <ore:ingotInvar>, null]
]);

# Bronze
recipes.addShaped("Bronze Gear_crafting",
<thermalfoundation:material:291>, [
  [null, <ore:ingotBronze>, null],
  [<ore:ingotBronze>, <ore:ingotIron>, <ore:ingotBronze>],
  [null, <ore:ingotBronze>, null]
]);

# Constantan
recipes.addShaped("Constantan Gear_crafting",
<thermalfoundation:material:292>, [
  [null, <ore:ingotConstantan>, null],
  [<ore:ingotConstantan>, <ore:ingotIron>, <ore:ingotConstantan>],
  [null, <ore:ingotConstantan>, null]
]);

# Signalum
recipes.addShaped("Signalum Gear_crafting",
<thermalfoundation:material:293>, [
  [null, <ore:ingotSignalum>, null],
  [<ore:ingotSignalum>, <ore:ingotIron>, <ore:ingotSignalum>],
  [null, <ore:ingotSignalum>, null]
]);

# Lumium
recipes.addShaped("Lumium Gear_crafting",
<thermalfoundation:material:294>, [
  [null, <ore:ingotLumium>, null],
  [<ore:ingotLumium>, <ore:ingotIron>, <ore:ingotLumium>],
  [null, <ore:ingotLumium>, null]
]);

# Enderium
recipes.addShaped("Enderium Gear_crafting",
<thermalfoundation:material:295>, [
  [null, <ore:ingotEnderium>, null],
  [<ore:ingotEnderium>, <ore:ingotIron>, <ore:ingotEnderium>],
  [null, <ore:ingotEnderium>, null]
]);

# Fluxed Electrum
recipes.addShaped("Fluxed Electrum Gear_crafting",
<redstonearsenal:material:96>, [
  [null, <ore:ingotElectrumFlux>, null],
  [<ore:ingotElectrumFlux>, <ore:ingotIron>, <ore:ingotElectrumFlux>],
  [null, <ore:ingotElectrumFlux>, null]
]);

# Gelid Enderium
recipes.addShaped("Gelid Enderium Gear_crafting",
<redstonerepository:material:3>, [
  [null, <ore:ingotGelidEnderium>, null],
  [<ore:ingotGelidEnderium>, <ore:ingotIron>, <ore:ingotGelidEnderium>],
  [null, <ore:ingotGelidEnderium>, null]
]);

# Compressed Iron
recipes.addShaped("Compressed Iron Gear_crafting",
<pneumaticcraft:compressed_iron_gear>, [
  [null, <ore:ingotIronCompressed>, null],
  [<ore:ingotIronCompressed>, <ore:ingotIron>, <ore:ingotIronCompressed>],
  [null, <ore:ingotIronCompressed>, null]
]);

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Standardize and Unify Plate recipes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
# Iron
recipes.addShaped("Iron Plate_crafting",
<thermalfoundation:material:32>, [
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);

# Gold
recipes.addShaped("Gold Plate_crafting",
<thermalfoundation:material:33>, [
  [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
]);

# Copper
recipes.addShaped("Copper Plate_crafting",
<thermalfoundation:material:320>, [
  [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]
]);

# Tin
recipes.addShaped("Tin Plate_crafting",
<thermalfoundation:material:321>, [
  [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]
]);

# Silver
recipes.addShaped("Silver Plate_crafting",
<thermalfoundation:material:322>, [
  [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]
]);

# Lead
recipes.addShaped("Lead Plate_crafting",
<thermalfoundation:material:323>, [
  [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]
]);

# Aluminum
recipes.addShaped("Aluminum Plate_crafting",
<thermalfoundation:material:324>, [
  [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);

# Nickel
recipes.addShaped("Nickel Plate_crafting",
<thermalfoundation:material:325>, [
  [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]
]);

# Platinum
recipes.addShaped("Platinum Plate_crafting",
<thermalfoundation:material:326>, [
  [<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>]
]);

# Iridium
recipes.addShaped("Iridium Plate_crafting",
<thermalfoundation:material:327>, [
  [<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>]
]);

# Mana Infused
recipes.addShaped("Mana Infused Plate_crafting",
<thermalfoundation:material:328>, [
  [<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>]
]);

# Steel
recipes.addShaped("Steel Plate_crafting",
<thermalfoundation:material:352>, [
  [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

# Electrum
recipes.addShaped("Electrum Plate_crafting",
<thermalfoundation:material:353>, [
  [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>]
]);

# Invar
recipes.addShaped("Invar Plate_crafting",
<thermalfoundation:material:354>, [
  [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]
]);

# Bronze
recipes.addShaped("Bronze Plate_crafting",
<thermalfoundation:material:355>, [
  [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]
]);

# Constantan
recipes.addShaped("Constantan Plate_crafting",
<thermalfoundation:material:356>, [
  [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]
]);

# Signalum
recipes.addShaped("Signalum Plate_crafting",
<thermalfoundation:material:357>, [
  [<ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>]
]);

# Lumium
recipes.addShaped("Lumium Plate_crafting",
<thermalfoundation:material:358>, [
  [<ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>]
]);

# Enderium
recipes.addShaped("Enderium Plate_crafting",
<thermalfoundation:material:359>, [
  [<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>],
]);

# Fluxed Electrum
recipes.addShaped("Fluxed Electrum Plate_crafting",
<redstonearsenal:material:128>, [
  [<ore:ingotElectrumFlux>, <ore:ingotElectrumFlux>, <ore:ingotElectrumFlux>]
]);

# Gelid Enderium
recipes.addShaped("Gelid Enderium Plate_crafting",
<redstonerepository:material:4>, [
  [<ore:ingotGelidEnderium>, <ore:ingotGelidEnderium>, <ore:ingotGelidEnderium>]
]);

# Tritanium
recipes.remove(<matteroverdrive:tritanium_plate>);
recipes.addShaped("Tritanium Plate_crafting",
<matteroverdrive:tritanium_plate>, [
  [<matteroverdrive:tritanium_ingot>, <matteroverdrive:tritanium_ingot>, <matteroverdrive:tritanium_ingot>]
]);
mods.tconstruct.Casting.addTableRecipe(<matteroverdrive:tritanium_plate>, <tconstruct:cast_custom:3>, <liquid:molten_tritanium>, 144, false, 200);
mods.thermalexpansion.Compactor.addPressRecipe(<matteroverdrive:tritanium_plate>, <matteroverdrive:tritanium_ingot>, 4000);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<matteroverdrive:tritanium_plate>, <matteroverdrive:tritanium_ingot>, null, null, null, null, null, null, null, null);

# Electricium
recipes.addShaped("Electricium Plate_crafting",
<lightningcraft:plate:7>, [
  [<ore:ingotElectricium>, <ore:ingotElectricium>, <ore:ingotElectricium>]
]);

# Skyfather
recipes.addShaped("Skyfather Plate_crafting",
<lightningcraft:plate:8>, [
  [<ore:ingotSkyfather>, <ore:ingotSkyfather>, <ore:ingotSkyfather>]
]);

# Mystic
recipes.addShaped("Mystic Plate_crafting",
<lightningcraft:plate:9>, [
  [<ore:ingotMystic>, <ore:ingotMystic>, <ore:ingotMystic>]
]);

print("==== Initialized unification.zs ====");
