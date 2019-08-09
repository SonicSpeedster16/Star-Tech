#Name: unification.zs
#Author: SonicSpeedster16
#Description: Unify items, recipes, and machine outputs.
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing unification.zs ====");

# Sapphire conversion
recipes.addShapeless(<biomesoplenty:gem:6>, [<iceandfire:sapphire_gem>]);
recipes.addShapeless(<iceandfire:sapphire_gem>, [<biomesoplenty:gem:6>]);

# Casting Tinkers Cobalt blocks shouldn't produce Chisel blocks
mods.tconstruct.Casting.removeBasinRecipe(<chisel:blockcobalt>, <liquid:cobalt>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

# Unify outputs of Silicon Ore processing
furnace.addRecipe(<galacticraftcore:basic_item:2>, <galacticraftplanets:venus:10>, 1.0);
furnace.addRecipe(<galacticraftcore:basic_item:2>, <galacticraftcore:basic_block_core:8>, 1.0);
mods.actuallyadditions.Crusher.removeRecipe(<galacticraftcore:basic_item:2>);

# Unify machine outputs of Black Quartz processing
recipes.removeShapeless(<actuallyadditions:item_misc:5>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 1, <actuallyadditions:item_misc:5>);

# Remove extra Blocks of Charcoal
recipes.remove(<actuallyadditions:block_misc:5>);
recipes.remove(<chisel:block_charcoal2>);
recipes.remove(<forestry:charcoal>);

# Remove duplicate Nether Quartz Ore + Petrotheum Dust recipe
recipes.removeByRecipeName("thermalfoundation:quartz");

# Replace Forestry Bronze with Thermal Bronze
recipes.remove(<forestry:ingot_bronze>);
recipes.addShapeless(<thermalfoundation:material:163> * 4, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>]);
mods.forestry.Carpenter.addRecipe(<thermalfoundation:material:163> * 2, [[<forestry:broken_bronze_pickaxe>]], 30);
mods.forestry.Carpenter.addRecipe(<thermalfoundation:material:163> * 1, [[<forestry:broken_bronze_shovel>]], 30);

# Remove UniDict's Gear and Plate Unification to prevent conflicts
mods.unidict.removalByKind.get("Crafting").remove("gear");
mods.unidict.removalByKind.get("Crafting").remove("plate");

/*~~~~~~~~~~~~~~~~~~~~~
Standardize Rod recipes
~~~~~~~~~~~~~~~~~~~~~~*/
# Stone
recipes.remove(<tconstruct:stone_stick>);
recipes.addShaped(<tconstruct:stone_stick>, [
  [null, null, <ore:cobblestone>],
  [null, <ore:cobblestone>, null],
  [<ore:cobblestone>, null, null]
]);

# Desh
recipes.remove(<galacticraftplanets:item_basic_mars:1>);
recipes.addShaped(<galacticraftplanets:item_basic_mars:1>, [
  [null, null, <ore:ingotDesh>],
  [null, <ore:ingotDesh>, null],
  [<ore:ingotDesh>, null, null]
]);

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Standardize and Unify Gear recipes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
# Iron
recipes.addShaped(<thermalfoundation:material:24>, [
  [null, <ore:ingotIron>, null],
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
  [null, <ore:ingotIron>, null]
]);

# Gold
recipes.addShaped(<thermalfoundation:material:25>, [
  [null, <ore:ingotGold>, null],
  [<ore:ingotGold>, <ore:ingotIron>, <ore:ingotGold>],
  [null, <ore:ingotGold>, null]
]);

# Diamond
recipes.remove(<thermalfoundation:material:26>);
recipes.addShaped(<thermalfoundation:material:26>, [
  [null, <ore:gemDiamond>, null],
  [<ore:gemDiamond>, <ore:ingotIron>, <ore:gemDiamond>],
  [null, <ore:gemDiamond>, null]
]);

# Emerald
recipes.remove(<thermalfoundation:material:27>);
recipes.addShaped(<thermalfoundation:material:27>, [
  [null, <ore:gemEmerald>, null],
  [<ore:gemEmerald>, <ore:ingotIron>, <ore:gemEmerald>],
  [null, <ore:gemEmerald>, null]
]);

# Copper
recipes.addShaped(<thermalfoundation:material:256>, [
  [null, <ore:ingotCopper>, null],
  [<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>],
  [null, <ore:ingotCopper>, null]
]);

# Tin
recipes.addShaped(<thermalfoundation:material:257>, [
  [null, <ore:ingotTin>, null],
  [<ore:ingotTin>, <ore:ingotIron>, <ore:ingotTin>],
  [null, <ore:ingotTin>, null]
]);

# Silver
recipes.addShaped(<thermalfoundation:material:258>, [
  [null, <ore:ingotSilver>, null],
  [<ore:ingotSilver>, <ore:ingotIron>, <ore:ingotSilver>],
  [null, <ore:ingotSilver>, null]
]);

# Lead
recipes.addShaped(<thermalfoundation:material:259>, [
  [null, <ore:ingotLead>, null],
  [<ore:ingotLead>, <ore:ingotIron>, <ore:ingotLead>],
  [null, <ore:ingotLead>, null]
]);

# Aluminum
recipes.addShaped(<thermalfoundation:material:260>, [
  [null, <ore:ingotAluminum>, null],
  [<ore:ingotAluminum>, <ore:ingotIron>, <ore:ingotAluminum>],
  [null, <ore:ingotAluminum>, null]
]);

# Nickel
recipes.addShaped(<thermalfoundation:material:261>, [
  [null, <ore:ingotNickel>, null],
  [<ore:ingotNickel>, <ore:ingotIron>, <ore:ingotNickel>],
  [null, <ore:ingotNickel>, null]
]);

# Platinum
recipes.addShaped(<thermalfoundation:material:262>, [
  [null, <ore:ingotPlatinum>, null],
  [<ore:ingotPlatinum>, <ore:ingotIron>, <ore:ingotPlatinum>],
  [null, <ore:ingotPlatinum>, null]
]);

# Iridium
recipes.addShaped(<thermalfoundation:material:263>, [
  [null, <ore:ingotIridium>, null],
  [<ore:ingotIridium>, <ore:ingotIron>, <ore:ingotIridium>],
  [null, <ore:ingotIridium>, null]
]);

# Mana Infused
recipes.addShaped(<thermalfoundation:material:264>, [
  [null, <ore:ingotMithril>, null],
  [<ore:ingotMithril>, <ore:ingotIron>, <ore:ingotMithril>],
  [null, <ore:ingotMithril>, null]
]);

# Steel
recipes.addShaped(<thermalfoundation:material:288>, [
  [null, <ore:ingotSteel>, null],
  [<ore:ingotSteel>, <ore:ingotIron>, <ore:ingotSteel>],
  [null, <ore:ingotSteel>, null]
]);

# Electrum
recipes.addShaped(<thermalfoundation:material:289>, [
  [null, <ore:ingotElectrum>, null],
  [<ore:ingotElectrum>, <ore:ingotIron>, <ore:ingotElectrum>],
  [null, <ore:ingotElectrum>, null]
]);

# Invar
recipes.addShaped(<thermalfoundation:material:290>, [
  [null, <ore:ingotInvar>, null],
  [<ore:ingotInvar>, <ore:ingotIron>, <ore:ingotInvar>],
  [null, <ore:ingotInvar>, null]
]);

# Bronze
recipes.addShaped(<thermalfoundation:material:291>, [
  [null, <ore:ingotBronze>, null],
  [<ore:ingotBronze>, <ore:ingotIron>, <ore:ingotBronze>],
  [null, <ore:ingotBronze>, null]
]);

# Constantan
recipes.addShaped(<thermalfoundation:material:292>, [
  [null, <ore:ingotConstantan>, null],
  [<ore:ingotConstantan>, <ore:ingotIron>, <ore:ingotConstantan>],
  [null, <ore:ingotConstantan>, null]
]);

# Signalum
recipes.addShaped(<thermalfoundation:material:293>, [
  [null, <ore:ingotSignalum>, null],
  [<ore:ingotSignalum>, <ore:ingotIron>, <ore:ingotSignalum>],
  [null, <ore:ingotSignalum>, null]
]);

# Lumium
recipes.addShaped(<thermalfoundation:material:294>, [
  [null, <ore:ingotLumium>, null],
  [<ore:ingotLumium>, <ore:ingotIron>, <ore:ingotLumium>],
  [null, <ore:ingotLumium>, null]
]);

# Enderium
recipes.addShaped(<thermalfoundation:material:295>, [
  [null, <ore:ingotEnderium>, null],
  [<ore:ingotEnderium>, <ore:ingotIron>, <ore:ingotEnderium>],
  [null, <ore:ingotEnderium>, null]
]);

# Fluxed Electrum
recipes.addShaped(<redstonearsenal:material:96>, [
  [null, <ore:ingotElectrumFlux>, null],
  [<ore:ingotElectrumFlux>, <ore:ingotIron>, <ore:ingotElectrumFlux>],
  [null, <ore:ingotElectrumFlux>, null]
]);

# Gelid Enderium
recipes.addShaped(<redstonerepository:material:3>, [
  [null, <ore:ingotGelidEnderium>, null],
  [<ore:ingotGelidEnderium>, <ore:ingotIron>, <ore:ingotGelidEnderium>],
  [null, <ore:ingotGelidEnderium>, null]
]);

# Compressed Iron
recipes.addShaped(<pneumaticcraft:compressed_iron_gear>, [
  [null, <ore:ingotIronCompressed>, null],
  [<ore:ingotIronCompressed>, <ore:ingotIron>, <ore:ingotIronCompressed>],
  [null, <ore:ingotIronCompressed>, null]
]);

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Standardize and Unify Plate recipes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
# Iron
recipes.addShaped(<thermalfoundation:material:32>, [
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);

# Gold
recipes.addShaped(<thermalfoundation:material:33>, [
  [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
]);

# Copper
recipes.addShaped(<thermalfoundation:material:320>, [
  [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]
]);

# Tin
recipes.addShaped(<thermalfoundation:material:321>, [
  [<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]
]);

# Silver
recipes.addShaped(<thermalfoundation:material:322>, [
  [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]
]);

# Lead
recipes.addShaped(<thermalfoundation:material:323>, [
  [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]
]);

# Aluminum
recipes.addShaped(<thermalfoundation:material:324>, [
  [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);

# Nickel
recipes.addShaped(<thermalfoundation:material:325>, [
  [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]
]);

# Platinum
recipes.addShaped(<thermalfoundation:material:326>, [
  [<ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>]
]);

# Iridium
recipes.addShaped(<thermalfoundation:material:327>, [
  [<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>]
]);

# Mana Infused
recipes.addShaped(<thermalfoundation:material:328>, [
  [<ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>]
]);

# Steel
recipes.addShaped(<thermalfoundation:material:352>, [
  [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

# Electrum
recipes.addShaped(<thermalfoundation:material:353>, [
  [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>]
]);

# Invar
recipes.addShaped(<thermalfoundation:material:354>, [
  [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>]
]);

# Bronze
recipes.addShaped(<thermalfoundation:material:355>, [
  [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]
]);

# Constantan
recipes.addShaped(<thermalfoundation:material:356>, [
  [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]
]);

# Signalum
recipes.addShaped(<thermalfoundation:material:357>, [
  [<ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>]
]);

# Lumium
recipes.addShaped(<thermalfoundation:material:358>, [
  [<ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>]
]);

# Enderium
recipes.addShaped(<thermalfoundation:material:359>, [
  [<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>],
]);

# Fluxed Electrum
recipes.addShaped(<redstonearsenal:material:128>, [
  [<ore:ingotElectrumFlux>, <ore:ingotElectrumFlux>, <ore:ingotElectrumFlux>]
]);

# Gelid Enderium
recipes.addShaped(<redstonerepository:material:4>, [
  [<ore:ingotGelidEnderium>, <ore:ingotGelidEnderium>, <ore:ingotGelidEnderium>]
]);

# Tritanium
recipes.remove(<matteroverdrive:tritanium_plate>);
recipes.addShaped(<matteroverdrive:tritanium_plate>, [
  [<matteroverdrive:tritanium_ingot>, <matteroverdrive:tritanium_ingot>, <matteroverdrive:tritanium_ingot>]
]);
mods.tconstruct.Casting.addTableRecipe(<matteroverdrive:tritanium_plate>, <tconstruct:cast_custom:3>, <liquid:molten_tritanium>, 144, false, 200);
mods.thermalexpansion.Compactor.addPressRecipe(<matteroverdrive:tritanium_plate>, <matteroverdrive:tritanium_ingot>, 4000);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<matteroverdrive:tritanium_plate>, <matteroverdrive:tritanium_ingot>, null, null, null, null, null, null, null, null);

# Electricium
recipes.addShaped(<lightningcraft:plate:7>, [
  [<ore:ingotElectricium>, <ore:ingotElectricium>, <ore:ingotElectricium>]
]);

# Skyfather
recipes.addShaped(<lightningcraft:plate:8>, [
  [<ore:ingotSkyfather>, <ore:ingotSkyfather>, <ore:ingotSkyfather>]
]);

# Mystic
recipes.addShaped(<lightningcraft:plate:9>, [
  [<ore:ingotMystic>, <ore:ingotMystic>, <ore:ingotMystic>]
]);

print("==== Initialized unification.zs ====");
